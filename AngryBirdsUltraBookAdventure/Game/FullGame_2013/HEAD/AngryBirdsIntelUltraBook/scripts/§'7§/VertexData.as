package §'7§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class VertexData
   {
      
      public static const §@!e§:int = 4;
      
      public static const §4d§:int = 2;
      
      public static const §!<§:int = 3;
      
      public static const § !D§:int = 4;
      
      public static const §@8§:int = 0;
      
      public static const §8!Y§:int = 0;
      
      public static const §+!h§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!e§ = 4;
            loop0:
            do
            {
               §4d§ = 2;
               while(true)
               {
                  §!<§ = 3;
                  while(_loc2_)
                  {
                     § !D§ = 4;
                     while(!_loc1_)
                     {
                        §@8§ = 0;
                        while(_loc2_ || _loc1_)
                        {
                           §8!Y§ = 0;
                           do
                           {
                              §+!h§ = 0;
                           }
                           while(!(_loc2_ || _loc2_));
                           
                           if(_loc2_ || _loc1_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private var §,!W§:ByteArray;
      
      private var § g§:Vector.<Number>;
      
      private var §+!=§:Vector.<Number>;
      
      private var §@!Y§:Boolean;
      
      private var §;!-§:int;
      
      private var §&i§:Vector.<Number>;
      
      public function VertexData(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§&i§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               addr65:
               while(_loc4_)
               {
                  this.§,!W§ = new ByteArray();
                  loop2:
                  while(true)
                  {
                     addr48:
                     while(true)
                     {
                        this.§,!W§.endian = Endian.LITTLE_ENDIAN;
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§,!W§.length = param1 * §4d§ * § !D§;
            if(!_loc4_)
            {
               continue;
            }
            if(_loc4_ || param1)
            {
               if(_loc4_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr65);
               }
               §§goto(addr48);
            }
            §§goto(addr61);
         }
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop5:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               if(§§pop() >= param1 * §4d§)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§ g§ = new Vector.<Number>(param1 * §@!e§,true);
                  }
                  while(true)
                  {
                     this.§+!=§ = new Vector.<Number>(param1 * §!<§,true);
                     loop7:
                     while(!_loc5_)
                     {
                        this.§@!Y§ = param2;
                        while(!_loc5_)
                        {
                           this.§;!-§ = param1;
                           if(_loc4_ || param2)
                           {
                              if(_loc4_ || param1)
                              {
                                 return;
                              }
                              continue loop7;
                              continue loop7;
                           }
                        }
                        loop9:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop9;
                           }
                        }
                        continue loop5;
                     }
                  }
               }
               else
               {
                  this.§,!W§.writeFloat(0);
               }
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc4_)
                     {
                     }
                     §§goto(addr195);
                  }
               }
            }
            §§goto(addr195);
         }
      }
      
      public function clone() : VertexData
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:VertexData = new VertexData(0,this.§@!Y§);
         if(!_loc2_)
         {
            _loc1_.§,!W§.length = this.§,!W§.length;
            loop0:
            while(true)
            {
               _loc1_.§,!W§.writeBytes(this.§,!W§);
               while(true)
               {
                  _loc1_.§ g§ = this.§ g§.concat();
                  loop2:
                  while(!_loc2_)
                  {
                     _loc1_.§ g§.fixed = true;
                     while(!_loc2_)
                     {
                        loop6:
                        while(!(_loc2_ && _loc3_))
                        {
                           _loc1_.§;!-§ = this.§;!-§;
                           if(!(_loc3_ || _loc1_))
                           {
                              continue;
                           }
                           addr44:
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 return _loc1_;
                                 addr63:
                              }
                              continue loop2;
                           }
                           addr83:
                           while(true)
                           {
                              _loc1_.§+!=§.fixed = true;
                              continue loop6;
                              §§goto(addr44);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.§+!=§ = this.§+!=§.concat();
            §§goto(addr83);
         }
         §§goto(addr63);
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
         var _loc9_:Vector.<Number> = param1.§+!=§;
         if(!(_loc18_ && param3))
         {
            §§push(this.§;!-§);
            while(true)
            {
               §§push(§!<§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     addr121:
                     while(true)
                     {
                        _loc6_ = §§pop();
                        addr122:
                        while(true)
                        {
                           §§push(param2);
                           addr100:
                           while(true)
                           {
                              §§push(§!<§);
                              if(_loc18_ && this)
                              {
                                 break;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc18_)
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc7_ = §§pop();
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               addr53:
               if(_loc18_ && param3)
               {
                  continue;
               }
               addr60:
               _loc8_ = §§pop();
               if(_loc19_ || param3)
               {
                  if(!(_loc18_ && this))
                  {
                     if(!_loc18_)
                     {
                        if(false)
                        {
                           loop8:
                           while(true)
                           {
                              if(!param5)
                              {
                                 §§push(0);
                                 if(_loc19_ || param2)
                                 {
                                    §§push(int(§§pop()));
                                    if(_loc19_)
                                    {
                                       addr181:
                                       _loc8_ = §§pop();
                                       addr229:
                                       if(!(_loc18_ && this))
                                       {
                                          addr189:
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          addr230:
                                          addr232:
                                          loop12:
                                          while(true)
                                          {
                                             §§push(_loc6_);
                                             addr231:
                                             loop48:
                                             for(; §§pop() < §§pop(); continue loop12)
                                             {
                                                var _loc14_:* = _loc7_++;
                                                _loc9_[_loc14_] = this.§+!=§[_loc8_];
                                                while(true)
                                                {
                                                   if(!_loc19_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!(_loc19_ || this))
                                                      {
                                                         continue loop48;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc19_ || param2)
                                                         {
                                                            break loop8;
                                                         }
                                                         continue loop48;
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          addr232:
                                          var _loc10_:ByteArray = param1.§,!W§;
                                          if(_loc19_)
                                          {
                                             §§push(this.§;!-§);
                                             if(_loc19_ || this)
                                             {
                                                §§push(§4d§);
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc19_)
                                                   {
                                                      §§push(§ !D§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                      }
                                                      addr393:
                                                   }
                                                   addr394:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   addr332:
                                                   §§push(§4d§);
                                                   if(_loc18_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc19_ || this)
                                                   {
                                                      §§push(§ !D§);
                                                      if(_loc19_)
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc18_)
                                                            {
                                                               addr358:
                                                               if(_loc19_ || param2)
                                                               {
                                                                  addr366:
                                                                  §§push(int(§§pop()));
                                                                  if(!_loc18_)
                                                                  {
                                                                     _loc7_ = §§pop();
                                                                     loop18:
                                                                     for(; !(_loc18_ && param3); while(true)
                                                                     {
                                                                        if(_loc18_ && param2)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        _loc10_.length = _loc7_ + _loc6_;
                                                                        if(_loc18_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr296);
                                                                        §§goto(addr280);
                                                                     },§§goto(addr417))
                                                                     {
                                                                        if(_loc10_.length < _loc7_ + _loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr296:
                                                                        while(true)
                                                                        {
                                                                           _loc10_.position = _loc7_;
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              addr280:
                                                                              while(true)
                                                                              {
                                                                                 _loc10_.writeBytes(this.§,!W§);
                                                                                 if(_loc19_ || param3)
                                                                                 {
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§push(param4);
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr246:
                                                                                          §§push(§§pop());
                                                                                          if(_loc19_ || param2)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(!(_loc19_ || param1))
                                                                                             {
                                                                                                break loop21;
                                                                                             }
                                                                                             §§pop();
                                                                                             if(!(_loc18_ && param2))
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                             addr417:
                                                                                             addr417:
                                                                                             _loc11_ = param1.§ g§;
                                                                                             if(!(_loc18_ && param3))
                                                                                             {
                                                                                                §§push(this.§;!-§);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(§@!e§);
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc19_ || param3)
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(_loc19_ || param1)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr460:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param2);
                                                                                                                  if(!(_loc19_ || this))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§@!e§);
                                                                                                                  if(_loc19_)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  addr958:
                                                                                                                  addr958:
                                                                                                                  if(§§pop() < §§pop())
                                                                                                                  {
                                                                                                                     if(this.§@!Y§)
                                                                                                                     {
                                                                                                                        addr807:
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(this.§ g§[_loc12_ + 3]));
                                                                                                                              addr601:
                                                                                                                              loop43:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    if(_loc19_ || param3)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr586:
                                                                                                                                    addr629:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       break loop43;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr955:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_);
                                                                                                                                 addr956:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr958);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr594:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr896:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc12_);
                                                                                                                              if(_loc19_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    addr912:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          _loc12_ = §§pop();
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             addr918:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                if(_loc19_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr936:
                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                   if(!(_loc18_ && param3))
                                                                                                                                                   {
                                                                                                                                                      addr944:
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr956);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr956);
                                                                                                                                             }
                                                                                                                                             addr918:
                                                                                                                                          }
                                                                                                                                          §§goto(addr959);
                                                                                                                                       }
                                                                                                                                       addr947:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                          {
                                                                                                                                             §§goto(addr955);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr959);
                                                                                                                                    }
                                                                                                                                    addr912:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr956);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr807:
                                                                                                                     }
                                                                                                                     _loc14_ = _loc7_++;
                                                                                                                     _loc11_[_loc14_] = this.§ g§[_loc12_++];
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           var _loc15_:* = _loc7_++;
                                                                                                                           _loc11_[_loc15_] = this.§ g§[_loc12_++];
                                                                                                                           if(_loc19_ || param2)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 var _loc16_:* = _loc7_++;
                                                                                                                                 _loc11_[_loc16_] = this.§ g§[_loc12_++];
                                                                                                                                 if(_loc19_ || param2)
                                                                                                                                 {
                                                                                                                                    var _loc17_:* = _loc7_++;
                                                                                                                                    _loc11_[_loc17_] = param3;
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr885:
                                                                                                                                 }
                                                                                                                                 addr886:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr851:
                                                                                                                           }
                                                                                                                           addr887:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr827:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc19_ || this)
                                                                                                                        {
                                                                                                                           §§goto(addr896);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr888:
                                                                                                                  }
                                                                                                                  §§goto(addr959);
                                                                                                               }
                                                                                                               addr677:
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(!(_loc18_ && this))
                                                                                                               {
                                                                                                                  addr686:
                                                                                                                  _loc8_ = int(§§pop());
                                                                                                                  if(!(_loc18_ && param2))
                                                                                                                  {
                                                                                                                     addr631:
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(_loc19_ || param2)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              _loc14_ = _loc7_++;
                                                                                                                              _loc11_[_loc14_] = this.§ g§[_loc8_];
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 if(_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc8_);
                                                                                                                                    if(_loc19_ || param3)
                                                                                                                                    {
                                                                                                                                       §§goto(addr677);
                                                                                                                                    }
                                                                                                                                    §§goto(addr947);
                                                                                                                                 }
                                                                                                                                 §§goto(addr807);
                                                                                                                              }
                                                                                                                              addr721:
                                                                                                                              _loc15_ = _loc7_++;
                                                                                                                              _loc11_[_loc15_] = this.§ g§[_loc12_++] * _loc13_;
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 _loc16_ = _loc7_++;
                                                                                                                                 _loc11_[_loc16_] = this.§ g§[_loc12_++] * _loc13_;
                                                                                                                                 if(_loc19_ || param3)
                                                                                                                                 {
                                                                                                                                    _loc17_ = _loc7_++;
                                                                                                                                    _loc11_[_loc17_] = param3;
                                                                                                                                    if(_loc19_ || param3)
                                                                                                                                    {
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          addr788:
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             if(_loc19_ || param3)
                                                                                                                                             {
                                                                                                                                                if(!(_loc18_ && this))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr807);
                                                                                                                                                }
                                                                                                                                                §§goto(addr918);
                                                                                                                                             }
                                                                                                                                             §§goto(addr888);
                                                                                                                                          }
                                                                                                                                          §§goto(addr851);
                                                                                                                                       }
                                                                                                                                       §§goto(addr886);
                                                                                                                                    }
                                                                                                                                    §§goto(addr885);
                                                                                                                                 }
                                                                                                                                 §§goto(addr788);
                                                                                                                              }
                                                                                                                              §§goto(addr887);
                                                                                                                           }
                                                                                                                           if(!(_loc19_ || param1))
                                                                                                                           {
                                                                                                                              §§goto(addr918);
                                                                                                                           }
                                                                                                                           §§goto(addr959);
                                                                                                                        }
                                                                                                                        §§goto(addr958);
                                                                                                                     }
                                                                                                                     §§goto(addr944);
                                                                                                                     addr694:
                                                                                                                  }
                                                                                                                  §§goto(addr918);
                                                                                                               }
                                                                                                               §§goto(addr947);
                                                                                                               addr502:
                                                                                                               if(!(_loc19_ || param3))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(param3);
                                                                                                               if(_loc19_)
                                                                                                               {
                                                                                                                  addr433:
                                                                                                                  if(_loc18_ && param2)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        if(_loc19_ || param2)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              §§goto(addr502);
                                                                                                                           }
                                                                                                                           §§goto(addr896);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        §§goto(addr433);
                                                                                                                     }
                                                                                                                     §§goto(addr936);
                                                                                                                     addr491:
                                                                                                                  }
                                                                                                                  if(§§pop() == 1)
                                                                                                                  {
                                                                                                                     if(_loc19_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr460);
                                                                                                                                 }
                                                                                                                                 §§goto(addr631);
                                                                                                                              }
                                                                                                                              §§goto(addr896);
                                                                                                                           }
                                                                                                                           §§goto(addr912);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr660:
                                                                                                                           _loc12_ = §§pop();
                                                                                                                           if(_loc19_ || param3)
                                                                                                                           {
                                                                                                                              §§push(0);
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    addr623:
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    if(!_loc18_)
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          addr652:
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                          if(_loc19_ || param3)
                                                                                                                                          {
                                                                                                                                             §§goto(addr660);
                                                                                                                                          }
                                                                                                                                          §§goto(addr912);
                                                                                                                                       }
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       §§goto(addr629);
                                                                                                                                    }
                                                                                                                                    §§goto(addr944);
                                                                                                                                 }
                                                                                                                                 §§goto(addr686);
                                                                                                                              }
                                                                                                                              §§goto(addr936);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr918);
                                                                                                                     }
                                                                                                                     §§goto(addr694);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                  }
                                                                                                                  §§goto(addr652);
                                                                                                               }
                                                                                                               §§goto(addr601);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr623);
                                                                                                         }
                                                                                                         §§goto(addr944);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      if(_loc19_ || param3)
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            _loc14_ = _loc7_++;
                                                                                                            _loc11_[_loc14_] = this.§ g§[_loc12_++] * _loc13_;
                                                                                                            if(!(_loc18_ && this))
                                                                                                            {
                                                                                                               §§goto(addr721);
                                                                                                            }
                                                                                                            §§goto(addr827);
                                                                                                         }
                                                                                                         §§goto(addr586);
                                                                                                      }
                                                                                                      §§goto(addr896);
                                                                                                      §§goto(addr611);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr912);
                                                                                             }
                                                                                             §§goto(addr594);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr416);
                                                                                    }
                                                                                    §§goto(addr246);
                                                                                 }
                                                                                 §§goto(addr417);
                                                                              }
                                                                           }
                                                                           §§push(!§§pop());
                                                                           if(_loc19_ || param2)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           addr416:
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr417);
                                                                           }
                                                                           addr959:
                                                                           return;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        if(!(_loc18_ && param2))
                                                                        {
                                                                           §§goto(addr332);
                                                                        }
                                                                        §§goto(addr366);
                                                                     }
                                                                     §§goto(addr394);
                                                                     addr396:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     §§goto(addr396);
                                                                  }
                                                                  addr395:
                                                               }
                                                               §§goto(addr394);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         §§goto(addr393);
                                                      }
                                                      §§goto(addr398);
                                                   }
                                                   §§goto(addr358);
                                                }
                                             }
                                             §§goto(addr395);
                                          }
                                          §§goto(addr417);
                                       }
                                       addr229:
                                    }
                                    §§goto(addr215);
                                 }
                                 break;
                              }
                              while(!(_loc18_ && param2))
                              {
                                 param5.transformVectors(this.§+!=§,this.§&i§);
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc18_)
                                    {
                                       if(_loc19_)
                                       {
                                          if(!_loc18_)
                                          {
                                             addr51:
                                             §§push(int(§§pop()));
                                             if(!_loc19_)
                                             {
                                                break;
                                             }
                                             §§goto(addr53);
                                          }
                                          §§goto(addr100);
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr51);
                                    §§goto(addr60);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr122);
                              §§goto(addr215);
                           }
                           while(true)
                           {
                              §§push(int(§§pop()));
                              if(_loc19_)
                              {
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    if(_loc19_)
                                    {
                                       §§goto(addr229);
                                    }
                                    §§goto(addr232);
                                 }
                                 addr226:
                              }
                              §§goto(addr230);
                           }
                           addr79:
                        }
                        loop46:
                        while(true)
                        {
                           §§push(_loc8_);
                           if(_loc19_)
                           {
                              while(true)
                              {
                                 §§push(_loc6_);
                                 if(!_loc18_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc19_)
                                       {
                                          §§goto(addr189);
                                       }
                                       §§goto(addr232);
                                    }
                                    else
                                    {
                                       _loc14_ = _loc7_++;
                                       _loc9_[_loc14_] = this.§&i§[_loc8_];
                                       if(_loc19_)
                                       {
                                          if(!(_loc18_ && param3))
                                          {
                                             §§push(_loc8_);
                                             if(!_loc18_)
                                             {
                                                §§push(§§pop() + 1);
                                                if(_loc18_)
                                                {
                                                   continue;
                                                }
                                                §§push(int(§§pop()));
                                                if(!_loc18_)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(!_loc18_)
                                                   {
                                                      continue loop46;
                                                   }
                                                   §§goto(addr207);
                                                }
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr204);
                                    }
                                 }
                                 break;
                              }
                              §§goto(addr231);
                           }
                           else
                           {
                              §§goto(addr181);
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr79);
                     }
                     addr114:
                  }
                  §§goto(addr83);
               }
               §§goto(addr97);
            }
         }
         §§goto(addr114);
      }
      
      public function append(param1:VertexData) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§,!W§.length;
         if(_loc9_)
         {
            this.§,!W§.length += param1.§,!W§.length;
            loop0:
            while(true)
            {
               this.§,!W§.position = _loc2_;
               addr55:
               while(true)
               {
                  addr40:
                  while(true)
                  {
                     this.§,!W§.writeBytes(param1.§,!W§);
                     addr47:
                     while(!_loc10_)
                     {
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§ g§.fixed = false;
            if(!(_loc10_ && _loc2_))
            {
               if(!_loc10_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr40);
               }
               §§goto(addr55);
            }
            §§goto(addr47);
         }
         var _loc3_:Vector.<Number> = param1.§ g§;
         var _loc4_:int = _loc3_.length;
         §§push(0);
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop5:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc10_ && this))
            {
               if(§§pop() >= _loc4_)
               {
                  loop6:
                  for(; !(_loc10_ && this); if(!(_loc10_ && param1))
                  {
                     if(true)
                     {
                        break loop5;
                     }
                     continue loop5;
                  })
                  {
                     this.§ g§.fixed = true;
                     while(!(_loc10_ && _loc3_))
                     {
                        this.§+!=§.fixed = false;
                        if(!_loc10_)
                        {
                           continue loop6;
                        }
                     }
                     §§push(_loc5_);
                     if(_loc9_ || param1)
                     {
                        §§push(§§pop() + 1);
                        if(_loc9_)
                        {
                           addr150:
                           _loc5_ = int(§§pop());
                           break;
                        }
                     }
                     §§goto(addr150);
                  }
                  continue;
               }
               this.§ g§.push(_loc3_[_loc5_]);
               §§goto(addr161);
            }
            §§goto(addr150);
         }
         var _loc6_:Vector.<Number> = param1.§+!=§;
         var _loc7_:int = _loc6_.length;
         §§push(0);
         if(!(_loc10_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc8_:* = §§pop();
         if(!(_loc10_ && _loc2_))
         {
            while(true)
            {
               §§push(_loc8_);
               if(!_loc10_)
               {
                  if(_loc9_ || this)
                  {
                     if(§§pop() >= _loc7_)
                     {
                        if(_loc9_)
                        {
                           while(true)
                           {
                              this.§+!=§.fixed = true;
                           }
                           addr225:
                        }
                        do
                        {
                           this.§;!-§ += param1.§ !Z§;
                        }
                        while(_loc10_ && _loc2_);
                        
                        if(!_loc10_)
                        {
                           break;
                        }
                        loop10:
                        while(!(_loc9_ || _loc2_))
                        {
                           while(true)
                           {
                              _loc8_ = §§pop();
                              continue loop10;
                           }
                        }
                        continue;
                     }
                     this.§+!=§.push(_loc6_[_loc8_]);
                     while(true)
                     {
                        §§push(_loc8_);
                        if(_loc9_ || param1)
                        {
                           §§push(§§pop() + 1);
                        }
                        §§goto(addr251);
                     }
                  }
                  while(true)
                  {
                  }
               }
               §§goto(addr251);
            }
            return;
         }
         §§goto(addr225);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         §§push(param1);
         if(_loc8_)
         {
            §§push(int(§§pop() * §!<§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = _loc5_++;
         this.§+!=§[_loc6_] = param2;
         var _loc7_:* = _loc5_++;
         this.§+!=§[_loc7_] = param3;
         if(!(_loc9_ && param1))
         {
            this.§+!=§[_loc5_] = param4;
         }
         else if(true)
         {
            return;
         }
      }
      
      public function §`!%§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §!<§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = _loc4_++;
         this.§+!=§[_loc5_] = param2;
         if(_loc6_)
         {
            this.§+!=§[_loc4_] = param3;
         }
      }
      
      public function §=!,§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §!<§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            param2.x = this.§+!=§[_loc3_++];
            while(true)
            {
               param2.y = this.§+!=§[_loc3_++];
               loop1:
               while(_loc5_ || param2)
               {
                  while(true)
                  {
                     param2.z = this.§+!=§[_loc3_];
                     if(_loc5_ || param2)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §]!G§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            if(this.§@!Y§)
            {
               addr22:
               §§push(param3);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc8_)
                  {
                  }
               }
               addr33:
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(Number(1));
               if(_loc9_)
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:* = §§pop();
            if(!_loc8_)
            {
               §§push(_loc4_);
               if(_loc9_)
               {
                  §§push(§§pop() / 255);
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc9_ || param3)
                     {
                     }
                     §§goto(addr72);
                  }
                  _loc4_ = §§pop();
                  addr63:
                  §§push(§!,§.§0,§(param2) * _loc4_);
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr72:
               var _loc5_:* = §§pop();
               §§push(§!,§.§-[§(param2) * _loc4_);
               if(_loc9_ || param1)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(§!,§.§4A§(param2) * _loc4_);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               if(!_loc8_)
               {
                  this.§-6§(param1,1,_loc5_,_loc6_,_loc7_,param3);
               }
               return;
            }
            §§goto(addr63);
         }
         §§goto(addr22);
      }
      
      private function §-6§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(_loc14_ || param3)
         {
            §§push(int(§§pop() * §@!e§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!(_loc13_ && this))
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
               this.§ g§[_loc9_] = param3;
               if(_loc14_ || this)
               {
                  var _loc10_:* = _loc7_++;
                  this.§ g§[_loc10_] = param4;
                  if(_loc14_)
                  {
                     var _loc11_:* = _loc7_++;
                     this.§ g§[_loc11_] = param5;
                     if(_loc14_ || param3)
                     {
                        var _loc12_:* = _loc7_++;
                        this.§ g§[_loc12_] = param6;
                     }
                  }
               }
               if(_loc14_)
               {
                  §§push(_loc8_);
                  if(!(_loc13_ && param3))
                  {
                     §§push(§§pop() - 1);
                     if(_loc13_)
                     {
                        continue;
                     }
                     §§push(int(§§pop()));
                     if(_loc13_ && this)
                     {
                        continue;
                     }
                  }
                  _loc8_ = §§pop();
                  if(!_loc14_)
                  {
                     break;
                  }
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §%!a§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §@!e§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = _loc3_++;
         this.§ g§[_loc4_] *= param2;
         var _loc5_:* = _loc3_++;
         this.§ g§[_loc5_] *= param2;
         var _loc6_:* = _loc3_++;
         this.§ g§[_loc6_] *= param2;
         if(!(_loc8_ && param1))
         {
            this.§ g§[_loc3_] *= param2;
         }
         else if(true)
         {
            return;
         }
      }
      
      public function §<X§(param1:int) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop() * §@!e§));
         }
         var _loc2_:* = §§pop();
         if(_loc8_ || param1)
         {
            if(this.§@!Y§)
            {
               addr46:
               §§push(Number(this.§ g§[_loc2_ + 3]));
               if(_loc8_ || this)
               {
                  addr70:
                  §§push(Number(§§pop()));
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc8_ || _loc2_)
               {
                  §§goto(addr70);
               }
            }
            var _loc3_:* = §§pop();
            if(_loc8_)
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
                        if(!(_loc7_ && this))
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
                                    §§push(this.§ g§[_loc2_] * _loc3_);
                                    loop5:
                                    while(!_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr182:
                                          while(!_loc7_)
                                          {
                                             §§push(this.§ g§[_loc2_ + 1] * _loc3_);
                                             if(_loc8_ || _loc2_)
                                             {
                                                if(_loc8_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   continue loop2;
                                                }
                                                continue loop3;
                                             }
                                             continue loop2;
                                          }
                                          continue loop4;
                                          addr111:
                                          if(!(_loc7_ && this))
                                          {
                                             if(!_loc7_)
                                             {
                                                addr121:
                                                §§push(Number(§§pop()));
                                                if(_loc8_)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(!_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               addr202:
                                                               break loop1;
                                                            }
                                                            §§push(this.§ g§[_loc2_ + 2] * _loc3_);
                                                            if(!(_loc7_ && this))
                                                            {
                                                               §§goto(addr111);
                                                            }
                                                            §§goto(addr121);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr182);
                                                         }
                                                      }
                                                      continue loop5;
                                                      addr156:
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      return §!,§.§5!?§(_loc4_,_loc5_,_loc6_);
                                                      addr128:
                                                   }
                                                   continue loop1;
                                                }
                                                continue loop2;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
                  §§goto(addr202);
               }
            }
            §§goto(addr128);
         }
         §§goto(addr46);
      }
      
      public function §-d§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!_loc4_)
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
                     addr117:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr118:
                        while(true)
                        {
                           param2 = §§pop();
                           addr119:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr116:
               }
               loop5:
               while(true)
               {
                  if(!this.§@!Y§)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(§§pop() * §@!e§);
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 addr76:
                                 §§push(§§pop() + 3);
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 addr79:
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    this.§ g§[_loc3_] = param2;
                                    if(!(_loc5_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr22);
                                       }
                                       addr95:
                                       while(true)
                                       {
                                          this.§]!G§(param1,this.§<X§(param1),param2);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc5_ || param1)
                                       {
                                          if(_loc5_)
                                          {
                                             break loop5;
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr119);
                                    }
                                 }
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr95);
               }
               addr22:
               return;
            }
         }
         §§goto(addr90);
      }
      
      public function §;X§(param1:int) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() * §@!e§);
            if(_loc4_)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§ g§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || param1)
         {
            §§push(int(§§pop() * §4d§));
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || param1)
         {
            this.§,!W§.position = _loc4_ * § !D§;
         }
         do
         {
            this.§,!W§.writeFloat(param2);
            do
            {
               this.§,!W§.writeFloat(param3);
            }
            while(!(_loc6_ || this));
            
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
            §§push(int(§§pop() * §4d§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            this.§,!W§.position = _loc3_ * § !D§;
         }
         do
         {
            param2.x = this.§,!W§.readFloat();
            do
            {
               param2.y = this.§,!W§.readFloat();
            }
            while(!_loc5_);
            
         }
         while(!(_loc5_ || this));
         
      }
      
      public function §`g§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(_loc9_)
         {
            §§push(int(§§pop() * §!<§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = _loc5_++;
         this.§+!=§[_loc6_] += param2;
         var _loc7_:* = _loc5_++;
         this.§+!=§[_loc7_] += param3;
         if(!_loc8_)
         {
            this.§+!=§[_loc5_] += param4;
         }
      }
      
      public function §1!Q§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || param1)
         {
            §§push(int(§§pop() * §!<§));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            this.§&i§[0] = this.§+!=§[_loc3_];
            while(true)
            {
               this.§&i§[1] = this.§+!=§[_loc3_ + 1];
               loop3:
               while(!(_loc5_ && this))
               {
                  this.§+!=§[_loc3_] = this.§&i§[0];
                  loop4:
                  for(; _loc4_ || this; while(_loc4_ || _loc3_)
                  {
                     this.§+!=§[_loc3_ + 2] = this.§&i§[2];
                     if(_loc4_ || _loc3_)
                     {
                        if(_loc4_)
                        {
                           return;
                        }
                        continue loop3;
                     }
                  })
                  {
                     addr102:
                     if(_loc4_ || param2)
                     {
                        this.§+!=§[_loc3_ + 1] = this.§&i§[1];
                        continue;
                     }
                     addr159:
                     while(true)
                     {
                        this.§&i§[2] = this.§+!=§[_loc3_ + 2];
                        break loop4;
                        §§goto(addr102);
                     }
                  }
                  while(true)
                  {
                     param2.transformVectors(this.§&i§,this.§&i§);
                     continue loop3;
                     §§goto(addr95);
                  }
                  addr95:
               }
            }
         }
         §§goto(addr159);
      }
      
      public function §-![§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            §§push(param2);
            if(!(_loc8_ && this))
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc8_ && param2))
                  {
                     §§push(0.001);
                     if(_loc7_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_)
                        {
                           param2 = §§pop();
                           if(!(_loc8_ && param2))
                           {
                              addr59:
                              if(this.§@!Y§)
                              {
                                 addr62:
                                 §§push(param2);
                                 if(!_loc8_)
                                 {
                                    addr65:
                                    §§push(Number(§§pop()));
                                    if(!_loc7_)
                                    {
                                    }
                                 }
                                 addr83:
                                 §§push(Number(§§pop()));
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(_loc7_)
                                 {
                                    §§goto(addr83);
                                 }
                              }
                           }
                           §§goto(addr62);
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc8_)
                        {
                           §§push(_loc3_);
                           if(!_loc8_)
                           {
                              §§push(§§pop() / 255);
                              if(_loc7_ || this)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_ || _loc3_)
                                 {
                                 }
                                 addr122:
                                 var _loc4_:Number = §§pop();
                                 §§goto(addr121);
                              }
                              _loc3_ = §§pop();
                              addr108:
                              §§push(§!,§.§0,§(param1) * _loc3_);
                              if(_loc7_ || param2)
                              {
                                 addr121:
                                 §§push(§!,§.§-[§(param1) * _loc3_);
                                 if(!(_loc8_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(§!,§.§4A§(param1) * _loc3_);
                                 if(!_loc8_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc6_:* = §§pop();
                                 if(_loc7_)
                                 {
                                    this.§-6§(0,this.§;!-§,_loc4_,_loc5_,_loc6_,param2);
                                 }
                                 return;
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr62);
               }
               §§goto(addr59);
            }
            §§goto(addr65);
         }
         §§goto(addr62);
      }
      
      public function §1%§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && param3))
         {
            §§push(param6);
            if(_loc13_ || param1)
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc14_)
                  {
                     addr35:
                     §§push(0.001);
                     if(!(_loc14_ && param1))
                     {
                        addr43:
                        §§push(Number(§§pop()));
                        if(!(_loc14_ && this))
                        {
                           addr51:
                           param6 = §§pop();
                           §§push(param1);
                           if(_loc13_)
                           {
                              addr58:
                              §§push(int(§§pop() * §@!e§));
                           }
                           var _loc7_:* = §§pop();
                           §§push(0);
                           if(!_loc14_)
                           {
                              §§push(int(§§pop()));
                           }
                           var _loc8_:* = §§pop();
                           loop0:
                           while(true)
                           {
                              §§push(_loc8_);
                              while(§§pop() < param2)
                              {
                                 var _loc9_:* = _loc7_++;
                                 this.§ g§[_loc9_] = param3;
                                 if(!_loc14_)
                                 {
                                    var _loc10_:* = _loc7_++;
                                    this.§ g§[_loc10_] = param4;
                                    if(_loc13_)
                                    {
                                       var _loc11_:* = _loc7_++;
                                       this.§ g§[_loc11_] = param5;
                                       if(!_loc14_)
                                       {
                                          var _loc12_:* = _loc7_++;
                                          this.§ g§[_loc12_] = param6;
                                       }
                                    }
                                 }
                                 if(_loc14_)
                                 {
                                    break;
                                 }
                                 §§push(_loc8_);
                                 if(!(_loc14_ && param1))
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc14_ && param2)
                                    {
                                       continue;
                                    }
                                    §§push(int(§§pop()));
                                    if(_loc14_)
                                    {
                                       continue;
                                    }
                                 }
                                 _loc8_ = §§pop();
                                 if(!_loc13_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              return;
                           }
                        }
                        §§goto(addr58);
                     }
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            §§goto(addr43);
         }
         §§goto(addr35);
      }
      
      public function §7!I§(param1:int, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         if(!(_loc5_ && this))
         {
            §§push(param2);
            if(!_loc5_)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     addr38:
                     §§push(0.001);
                     if(!_loc5_)
                     {
                        addr41:
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           param2 = §§pop();
                           if(!_loc5_)
                           {
                              addr47:
                              §§push(param2);
                              if(_loc6_)
                              {
                                 addr50:
                                 if(§§pop() == 1)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr59);
                                    }
                                 }
                              }
                              addr72:
                              var _loc3_:int = §§pop();
                              addr71:
                              if(_loc6_ || param2)
                              {
                                 if(!this.§@!Y§)
                                 {
                                    this.§ g§[_loc3_ + 3] *= param2;
                                    if(!(_loc5_ && param2))
                                    {
                                       if(!(_loc6_ || this))
                                       {
                                          while(_loc5_)
                                          {
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            break;
                                                         }
                                                         addr226:
                                                         while(true)
                                                         {
                                                            §§push(Number(this.§ g§[_loc3_ + 3]));
                                                            addr233:
                                                            while(true)
                                                            {
                                                               _loc4_ = §§pop();
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() / _loc4_);
                                                            if(!_loc5_)
                                                            {
                                                               addr194:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr233);
                                                         }
                                                         §§goto(addr194);
                                                      }
                                                      _loc4_ = §§pop();
                                                   }
                                                   this.§ g§[_loc3_] *= _loc4_;
                                                }
                                                this.§ g§[_loc3_ + 1] *= _loc4_;
                                             }
                                             this.§ g§[_loc3_ + 2] *= _loc4_;
                                          }
                                          this.§ g§[_loc3_ + 3] = param2;
                                          addr135:
                                       }
                                       return;
                                    }
                                    §§goto(addr135);
                                 }
                              }
                              §§goto(addr226);
                           }
                           §§push(param1);
                           if(!(_loc5_ && param2))
                           {
                              §§goto(addr71);
                              §§push(§§pop() * §@!e§);
                           }
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr50);
                  }
                  addr59:
                  return;
               }
               §§goto(addr47);
            }
            §§goto(addr41);
         }
         §§goto(addr38);
      }
      
      public function setPremultipliedAlpha(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Number = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(_loc8_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§@!Y§)
               {
                  §§goto(addr301);
               }
               loop1:
               while(true)
               {
                  §§push(param2);
                  if(_loc8_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc8_ || _loc3_)
                        {
                           if(_loc9_ && param2)
                           {
                              addr301:
                              return;
                           }
                           §§push(this.§;!-§);
                           while(true)
                           {
                              §§push(int(§§pop() * §@!e§));
                              addr293:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                              }
                           }
                           addr289:
                        }
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              continue loop1;
                           }
                           §§push(0);
                           if(!(_loc9_ && param1))
                           {
                              §§push(int(§§pop()));
                           }
                           if(_loc8_)
                           {
                              if(_loc8_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr289);
                           }
                           §§goto(addr293);
                        }
                        loop5:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(!(_loc9_ && param2))
                           {
                              if(!(_loc9_ && _loc3_))
                              {
                                 if(§§pop() >= _loc3_)
                                 {
                                    if(!_loc9_)
                                    {
                                       break loop1;
                                    }
                                    addr57:
                                    if(!_loc9_)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(_loc8_ || _loc3_)
                                          {
                                             if(_loc8_)
                                             {
                                                if(_loc8_ || param2)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§@!Y§);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               addr220:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            addr216:
                                                         }
                                                         else
                                                         {
                                                            §§push(1);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr194:
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ || _loc3_))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop17:
                                                                     while(!(_loc9_ && this))
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr122:
                                                                              if(_loc8_ || param2)
                                                                              {
                                                                                 if(§§pop() != 0)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          if(!(_loc8_ || this))
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             addr170:
                                                                                             §§push(§§pop() / _loc6_);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc8_)
                                                                                                {
                                                                                                   break loop18;
                                                                                                }
                                                                                                if(_loc9_ && param2)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                _loc7_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§%!a§(_loc4_,_loc7_);
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         addr117:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            if(!(_loc9_ && param1))
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  §§push(int(§§pop()));
                                                                                                               }
                                                                                                            }
                                                                                                            addr98:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               addr99:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§goto(addr117);
                                                                                                         }
                                                                                                         addr80:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                            §§push(Number(§§pop()));
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               continue loop16;
                                                                                                               §§goto(addr122);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                         }
                                                                                                         addr186:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr170:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                continue loop6;
                                                                                             }
                                                                                             addr232:
                                                                                          }
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§goto(addr170);
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    addr131:
                                                                                 }
                                                                                 §§goto(addr80);
                                                                              }
                                                                              §§goto(addr190);
                                                                           }
                                                                           §§goto(addr170);
                                                                        }
                                                                        §§goto(addr220);
                                                                     }
                                                                     addr223:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr224);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr223);
                                                      }
                                                   }
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr99);
                                 }
                                 else
                                 {
                                    §§push(this.§;X§(0));
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr98);
                        }
                        return;
                        addr252:
                     }
                     break;
                  }
                  continue loop0;
               }
               this.§@!Y§ = param1;
               §§goto(addr57);
            }
         }
         §§goto(addr252);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§@!Y§;
      }
      
      public function get § !Z§() : int
      {
         return this.§;!-§;
      }
      
      public function set § !Z§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc6_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§4d§);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop() * § !D§);
                     if(_loc5_)
                     {
                        §§push(§§pop() - this.§,!W§.length);
                     }
                  }
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr523:
                     if(_loc6_ && _loc3_)
                     {
                        continue;
                     }
                     addr530:
                     _loc3_ = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        addr538:
                        if(!(_loc5_ || this))
                        {
                           loop8:
                           while(_loc5_)
                           {
                              this.§,!W§.position = _loc4_;
                              loop9:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    §§push(0);
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr513:
                                       if(_loc6_ && param1)
                                       {
                                          break;
                                       }
                                       §§push(int(§§pop()));
                                    }
                                    if(!_loc6_)
                                    {
                                       §§goto(addr523);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          if(!_loc6_)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                break;
                                             }
                                             §§goto(addr538);
                                             continue loop8;
                                          }
                                          continue loop1;
                                       }
                                       addr483:
                                       this.§ g§.fixed = false;
                                       addr452:
                                       addr454:
                                       addr466:
                                       addr467:
                                       §§push(param1 * §@!e§);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§§pop() - this.§ g§.length);
                                       }
                                       _loc2_ = int(§§pop());
                                       addr468:
                                       addr488:
                                       §§push(int(0));
                                       if(!_loc6_)
                                       {
                                          _loc3_ = §§pop();
                                          addr413:
                                          addr449:
                                          if(_loc3_ >= _loc2_)
                                          {
                                             addr419:
                                             _loc3_ = int(_loc2_);
                                             addr417:
                                             addr418:
                                             if(_loc5_ || param1)
                                             {
                                                addr379:
                                                if(_loc3_ >= 0)
                                                {
                                                   addr383:
                                                   this.§ g§.fixed = true;
                                                   this.§+!=§.fixed = false;
                                                   addr387:
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(param1);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  addr324:
                                                                  §§push(§!<§);
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() - this.§+!=§.length);
                                                                        }
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           addr348:
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr356:
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr284:
                                                                                 §§push(int(0));
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    addr303:
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   addr194:
                                                                                                   §§push(_loc2_);
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      if(_loc5_ || param1)
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            addr211:
                                                                                                            §§push(int(_loc2_));
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr214:
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr43:
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                    {
                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                       {
                                                                                                                                          addr67:
                                                                                                                                          if(_loc5_ || param1)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         this.§+!=§.fixed = true;
                                                                                                                                                         addr96:
                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  this.§;!-§ = param1;
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr67);
                                                                                                                                                                     }
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr96);
                                                                                                                                                               }
                                                                                                                                                               addr476:
                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr483);
                                                                                                                                                               }
                                                                                                                                                               addr493:
                                                                                                                                                               _loc3_++;
                                                                                                                                                               if(_loc3_ >= _loc2_ / § !D§)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr476);
                                                                                                                                                               }
                                                                                                                                                               this.§,!W§.writeFloat(0);
                                                                                                                                                               addr503:
                                                                                                                                                               §§goto(addr503);
                                                                                                                                                               addr491:
                                                                                                                                                               addr492:
                                                                                                                                                               addr494:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr214);
                                                                                                                                                         }
                                                                                                                                                         addr168:
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            if(_loc5_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + 1);
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           addr137:
                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                 addr147:
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr43);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr468);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr432:
                                                                                                                                                                                       _loc3_++;
                                                                                                                                                                                       addr430:
                                                                                                                                                                                       addr442:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr413);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr417);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr419);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr348);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr493);
                                                                                                                                                                     }
                                                                                                                                                                     addr394:
                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                        addr402:
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr379);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr419);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr491);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr137);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr211);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr137);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr356);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr449);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr303);
                                                                                                                                                }
                                                                                                                                                addr279:
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr228:
                                                                                                                                                   §§push(_loc3_ + 1);
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            addr246:
                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                            if(_loc5_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        _loc3_ = §§pop();
                                                                                                                                                                        addr270:
                                                                                                                                                                        §§goto(addr303);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr492);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr430);
                                                                                                                                                               }
                                                                                                                                                               addr390:
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr393:
                                                                                                                                                                  §§goto(addr394);
                                                                                                                                                                  §§push(int(§§pop() + 1));
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr452);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr393);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr432);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr284);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr246);
                                                                                                                                                }
                                                                                                                                                §§goto(addr390);
                                                                                                                                                §§push(_loc3_);
                                                                                                                                                addr412:
                                                                                                                                             }
                                                                                                                                             §§goto(addr211);
                                                                                                                                          }
                                                                                                                                          §§goto(addr147);
                                                                                                                                       }
                                                                                                                                       this.§+!=§.pop();
                                                                                                                                       §§goto(addr168);
                                                                                                                                    }
                                                                                                                                    §§goto(addr379);
                                                                                                                                 }
                                                                                                                                 §§goto(addr194);
                                                                                                                              }
                                                                                                                              §§goto(addr476);
                                                                                                                           }
                                                                                                                           §§goto(addr211);
                                                                                                                        }
                                                                                                                        §§goto(addr137);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr387);
                                                                                                               }
                                                                                                               §§goto(addr270);
                                                                                                            }
                                                                                                            §§goto(addr413);
                                                                                                         }
                                                                                                         this.§+!=§.push(0);
                                                                                                         §§goto(addr279);
                                                                                                      }
                                                                                                      §§goto(addr454);
                                                                                                   }
                                                                                                   §§goto(addr324);
                                                                                                }
                                                                                                §§goto(addr418);
                                                                                             }
                                                                                             §§goto(addr284);
                                                                                          }
                                                                                          §§goto(addr228);
                                                                                       }
                                                                                       §§goto(addr246);
                                                                                    }
                                                                                    §§goto(addr211);
                                                                                 }
                                                                                 §§goto(addr379);
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                           §§goto(addr483);
                                                                        }
                                                                        §§goto(addr466);
                                                                     }
                                                                     §§goto(addr476);
                                                                  }
                                                                  §§goto(addr413);
                                                               }
                                                               §§goto(addr483);
                                                            }
                                                            §§goto(addr432);
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                      §§goto(addr494);
                                                   }
                                                   §§goto(addr402);
                                                }
                                                this.§ g§.pop();
                                                §§goto(addr412);
                                             }
                                             §§goto(addr488);
                                          }
                                          this.§ g§.push(0);
                                          §§goto(addr442);
                                       }
                                       §§goto(addr467);
                                       addr548:
                                    }
                                 }
                                 addr580:
                                 addr609:
                                 while(_loc5_)
                                 {
                                    §§goto(addr548);
                                    §§push(_loc2_);
                                 }
                                 while(true)
                                 {
                                    §§push(int(this.§,!W§.length));
                                    break loop9;
                                 }
                                 §§goto(addr530);
                              }
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    _loc4_ = §§pop();
                                    break loop8;
                                 }
                                 continue loop0;
                                 §§goto(addr513);
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              this.§,!W§.length += _loc2_;
                              §§goto(addr580);
                           }
                        }
                        §§goto(addr476);
                     }
                     §§goto(addr558);
                  }
               }
            }
         }
         §§goto(addr609);
      }
      
      public function get §%!T§() : ByteArray
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§,!W§.position = 0;
         }
         return this.§,!W§;
      }
      
      public function get §]y§() : Vector.<Number>
      {
         return this.§ g§;
      }
      
      public function get §&c§() : Vector.<Number>
      {
         return this.§+!=§;
      }
   }
}
