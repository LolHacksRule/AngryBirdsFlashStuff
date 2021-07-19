package §^!^§
{
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §#!_§
   {
      
      public static const §1+§:int = 4;
      
      public static const each:int = 2;
      
      public static const §+!;§:int = 3;
      
      public static const §],§:int = 4;
      
      public static const §<U§:int = 0;
      
      public static const §>!1§:int = 0;
      
      public static const §[!^§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1+§ = 4;
            while(true)
            {
               each = 2;
               loop1:
               while(!_loc2_)
               {
                  §+!;§ = 3;
                  while(true)
                  {
                     §],§ = 4;
                     loop3:
                     while(_loc1_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        §<U§ = 0;
                        while(true)
                        {
                           §>!1§ = 0;
                           loop5:
                           while(!(_loc2_ && _loc2_))
                           {
                              while(true)
                              {
                                 §[!^§ = 0;
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      private var §3!]§:ByteArray;
      
      private var §5W§:Vector.<Number>;
      
      private var §+2§:Vector.<Number>;
      
      private var §40§:Boolean;
      
      private var §]!k§:int;
      
      private var §while§:Vector.<Number>;
      
      public function §#!_§(param1:int, param2:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§while§ = new Vector.<Number>(12,true);
            while(true)
            {
               super();
               while(_loc5_ || this)
               {
                  this.§3!]§ = new ByteArray();
                  loop2:
                  while(_loc5_ || param2)
                  {
                     loop3:
                     while(true)
                     {
                        this.§3!]§.endian = Endian.LITTLE_ENDIAN;
                        loop4:
                        while(!_loc4_)
                        {
                           while(true)
                           {
                              this.§3!]§.length = param1 * each * §],§;
                              if(!_loc4_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           var _loc3_:int = 0;
                           loop6:
                           while(true)
                           {
                              if(_loc3_ >= param1 * each)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§5W§ = new Vector.<Number>(param1 * §1+§,true);
                                    loop8:
                                    while(true)
                                    {
                                       this.§+2§ = new Vector.<Number>(param1 * §+!;§,true);
                                       while(_loc5_ || _loc3_)
                                       {
                                          if(_loc5_)
                                          {
                                             this.§40§ = param2;
                                             while(_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      this.§]!k§ = param1;
                                                      if(_loc5_ || param1)
                                                      {
                                                         return;
                                                      }
                                                      continue;
                                                      continue;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop8;
                                             }
                                             continue;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              else
                              {
                                 this.§3!]§.writeFloat(0);
                              }
                              _loc3_++;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function clone() : §#!_§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#!_§ = new §#!_§(0,this.§40§);
         if(_loc3_ || _loc2_)
         {
            _loc1_.§3!]§.length = this.§3!]§.length;
            loop0:
            while(true)
            {
               _loc1_.§3!]§.writeBytes(this.§3!]§);
               addr122:
               while(true)
               {
                  _loc1_.§5W§ = this.§5W§.concat();
                  continue loop0;
               }
            }
         }
         §§goto(addr76);
      }
      
      public function copyTo(param1:§#!_§, param2:int, param3:Number, param4:Boolean, param5:Matrix3D) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:Vector.<Number> = null;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc9_:Vector.<Number> = param1.§+2§;
         if(_loc18_)
         {
            §§push(this.§]!k§);
            loop0:
            while(true)
            {
               §§push(§+!;§);
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
                           if(_loc18_)
                           {
                              if(!_loc18_)
                              {
                                 break;
                              }
                              §§push(§+!;§);
                              if(_loc19_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc19_)
                              {
                                 continue loop2;
                              }
                              §§push(int(§§pop()));
                           }
                           loop5:
                           while(_loc18_)
                           {
                              _loc7_ = §§pop();
                              while(!_loc19_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(!param5)
                                    {
                                       §§push(0);
                                       if(!(_loc19_ && param3))
                                       {
                                          addr155:
                                          _loc8_ = §§pop();
                                          addr180:
                                          if(_loc18_ || param3)
                                          {
                                             while(true)
                                             {
                                                break loop7;
                                             }
                                             addr191:
                                             var _loc10_:ByteArray = param1.§3!]§;
                                             if(_loc18_ || param2)
                                             {
                                                §§push(this.§]!k§);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(each);
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc19_ && param3))
                                                      {
                                                         §§push(§],§);
                                                         if(_loc18_)
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
                                                                        if(!_loc18_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(each);
                                                                        if(!_loc18_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc18_ || param2)
                                                                        {
                                                                           §§push(§],§);
                                                                           if(_loc18_ || param3)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc19_ && this)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr355);
                                                                        }
                                                                        if(!_loc18_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     if(_loc19_ && param1)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     if(!(_loc19_ && param3))
                                                                     {
                                                                        if(_loc10_.length < _loc7_ + _loc6_)
                                                                        {
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              _loc10_.length = _loc7_ + _loc6_;
                                                                              if(!_loc18_)
                                                                              {
                                                                              }
                                                                              break;
                                                                              addr248:
                                                                              if(_loc19_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc19_ && param2)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc10_.writeBytes(this.§3!]§);
                                                                                 if(!(_loc19_ && param2))
                                                                                 {
                                                                                    §§push(param4);
                                                                                    if(_loc18_ || param3)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          addr215:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr219:
                                                                                                §§pop();
                                                                                                if(_loc18_ || param2)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr355:
                                                                                                   §§push(§§pop() == 1);
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      addr363:
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr365:
                                                                                                      _loc11_ = param1.§5W§;
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(this.§]!k§);
                                                                                                         loop20:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§1+§);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(int(§§pop()));
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     addr441:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr404:
                                                                                                                        addr527:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param2);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        addr734:
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        if(_loc18_ || param1)
                                                                                                                        {
                                                                                                                           addr750:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              addr751:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§]!k§);
                                                                                                                                 break loop20;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr750:
                                                                                                                           addr535:
                                                                                                                        }
                                                                                                                        _loc12_++;
                                                                                                                        if(!_loc19_)
                                                                                                                        {
                                                                                                                           addr747:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc8_++;
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§goto(addr750);
                                                                                                                              }
                                                                                                                              §§goto(addr754);
                                                                                                                           }
                                                                                                                           addr747:
                                                                                                                        }
                                                                                                                        §§goto(addr754);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr513);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(this.§40§)
                                                                                                               {
                                                                                                                  §§goto(addr506);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  var _loc14_:*;
                                                                                                                  _loc11_[_loc14_ = _loc7_++] = this.§5W§[_loc12_++];
                                                                                                                  if(!(_loc19_ && param3))
                                                                                                                  {
                                                                                                                     §§goto(addr680);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr730);
                                                                                                            }
                                                                                                            §§goto(addr754);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr747);
                                                                                                   }
                                                                                                   addr754:
                                                                                                   return;
                                                                                                   §§push(param3);
                                                                                                }
                                                                                                break loop17;
                                                                                             }
                                                                                             §§goto(addr363);
                                                                                          }
                                                                                          §§goto(addr355);
                                                                                       }
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                    §§goto(addr215);
                                                                                 }
                                                                                 break loop17;
                                                                              }
                                                                           }
                                                                           §§goto(addr365);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc10_.position = _loc7_;
                                                                           if(_loc18_)
                                                                           {
                                                                              §§goto(addr248);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr365);
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr355);
                                                   }
                                                }
                                             }
                                             §§goto(addr262);
                                             addr188:
                                          }
                                          while(true)
                                          {
                                             _loc8_++;
                                             if(!(_loc19_ && param2))
                                             {
                                                §§goto(addr188);
                                             }
                                             §§goto(addr191);
                                          }
                                          addr180:
                                       }
                                    }
                                    if(!(_loc19_ && param2))
                                    {
                                       param5.transformVectors(this.§+2§,this.§while§);
                                    }
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc19_)
                                       {
                                          break;
                                       }
                                       _loc8_ = §§pop();
                                       if(_loc19_ && param1)
                                       {
                                          continue;
                                       }
                                       if(!_loc19_)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr52);
                                             }
                                             else
                                             {
                                                do
                                                {
                                                   §§push(_loc8_);
                                                   if(!(_loc18_ || this))
                                                   {
                                                      break loop9;
                                                   }
                                                   §§push(_loc6_);
                                                   if(!(_loc19_ && param1))
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc19_)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc9_[_loc14_ = _loc7_++] = this.§while§[_loc8_];
                                                         if(_loc18_)
                                                         {
                                                            if(!(_loc19_ && this))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr177);
                                                         }
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                }
                                                while(_loc8_++, _loc18_ || param3);
                                                
                                                §§goto(addr180);
                                             }
                                          }
                                          §§goto(addr155);
                                          addr50:
                                       }
                                       else
                                       {
                                          §§goto(addr85);
                                       }
                                       §§goto(addr52);
                                    }
                                    continue loop5;
                                 }
                                 §§push(_loc6_);
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       _loc9_[_loc14_ = _loc7_++] = this.§+2§[_loc8_];
                                       while(true)
                                       {
                                          if(!_loc19_)
                                          {
                                             §§goto(addr180);
                                          }
                                          §§goto(addr191);
                                       }
                                       addr177:
                                    }
                                    §§goto(addr191);
                                 }
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function append(param1:§#!_§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:int = this.§3!]§.length;
         if(_loc9_)
         {
            this.§3!]§.length += param1.§3!]§.length;
            loop0:
            while(true)
            {
               this.§3!]§.position = _loc2_;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§3!]§.writeBytes(param1.§3!]§);
                     do
                     {
                        this.§5W§.fixed = false;
                     }
                     while(_loc10_ && _loc3_);
                     
                     if(!(_loc9_ || param1))
                     {
                        break;
                     }
                     if(_loc10_)
                     {
                        continue loop0;
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     var _loc3_:Vector.<Number> = param1.§5W§;
                     var _loc4_:int = _loc3_.length;
                     var _loc5_:int = 0;
                     while(true)
                     {
                        if(_loc5_ >= _loc4_)
                        {
                           do
                           {
                              this.§5W§.fixed = true;
                              do
                              {
                                 this.§+2§.fixed = false;
                              }
                              while(_loc10_);
                              
                           }
                           while(_loc10_);
                           
                           if(_loc9_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                        else
                        {
                           this.§5W§.push(_loc3_[_loc5_]);
                           while(true)
                           {
                              _loc5_++;
                           }
                           addr127:
                        }
                        while(_loc10_)
                        {
                           §§goto(addr127);
                        }
                     }
                     var _loc6_:Vector.<Number>;
                     var _loc7_:int = (_loc6_ = param1.§+2§).length;
                     var _loc8_:int = 0;
                     if(!_loc10_)
                     {
                        while(true)
                        {
                           if(_loc8_ >= _loc7_)
                           {
                              if(!(_loc10_ && _loc3_))
                              {
                                 this.§+2§.fixed = true;
                              }
                              do
                              {
                                 this.§]!k§ += param1.§-!n§;
                              }
                              while(!(_loc9_ || _loc2_));
                              
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              if(!_loc10_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.§+2§.push(_loc6_[_loc8_]);
                           }
                           _loc8_++;
                        }
                        return;
                        addr165:
                     }
                     while(true)
                     {
                        §§goto(addr165);
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function setPosition(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §+!;§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§+2§[_loc6_ = _loc5_++] = param2;
         var _loc7_:*;
         this.§+2§[_loc7_ = _loc5_++] = param3;
         if(_loc9_)
         {
            this.§+2§[_loc5_] = param4;
         }
      }
      
      public function §>!o§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(int(§§pop() * §+!;§));
         }
         var _loc4_:* = §§pop();
         var _loc5_:*;
         this.§+2§[_loc5_ = _loc4_++] = param2;
         if(!_loc7_)
         {
            this.§+2§[_loc4_] = param3;
         }
      }
      
      public function §['§(param1:int, param2:Vector3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §+!;§));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || this)
         {
            param2.x = this.§+2§[_loc3_++];
            do
            {
               param2.y = this.§+2§[_loc3_++];
               do
               {
                  param2.z = this.§+2§[_loc3_];
               }
               while(_loc4_);
               
            }
            while(_loc4_ && param2);
            
         }
      }
      
      public function §,!;§(param1:int, param2:uint, param3:Number = 1.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param2))
         {
            if(this.§40§)
            {
               addr27:
               §§push(param3);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(_loc9_)
                  {
                     addr38:
                     §§push(Number(§§pop()));
                  }
               }
            }
            else
            {
               §§push(Number(1));
               if(_loc9_)
               {
                  §§goto(addr38);
               }
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(_loc9_ || this)
            {
               §§push(§§pop() / 255);
               if(!_loc8_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     addr65:
                     _loc4_ = §§pop();
                     §§push(§+%§.§<#§(param2) * _loc4_);
                     if(_loc9_ || this)
                     {
                        addr78:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc5_:* = §§pop();
                  §§push(§+%§.§4!V§(param2) * _loc4_);
                  if(_loc9_ || param3)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc6_:* = §§pop();
                  §§push(§+%§.§7h§(param2) * _loc4_);
                  if(_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc9_ || this)
                  {
                     this.§;!T§(param1,1,_loc5_,_loc6_,_loc7_,param3);
                  }
                  return;
               }
               §§goto(addr65);
            }
            §§goto(addr78);
         }
         §§goto(addr27);
      }
      
      private function §;!T§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(param1);
         if(_loc14_)
         {
            §§push(int(§§pop() * §1+§));
         }
         var _loc7_:* = §§pop();
         §§push(param2);
         if(!_loc13_)
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
               this.§5W§[_loc9_ = _loc7_++] = param3;
               if(_loc14_)
               {
                  var _loc10_:*;
                  this.§5W§[_loc10_ = _loc7_++] = param4;
                  if(!_loc13_)
                  {
                     var _loc11_:*;
                     this.§5W§[_loc11_ = _loc7_++] = param5;
                     if(_loc14_ || param3)
                     {
                        var _loc12_:*;
                        this.§5W§[_loc12_ = _loc7_++] = param6;
                     }
                  }
               }
               if(_loc14_ || param2)
               {
                  §§push(_loc8_);
                  if(_loc14_ || param1)
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc14_ || param2))
                     {
                        continue;
                     }
                  }
                  _loc8_ = §§pop();
                  if(!(_loc14_ || param1))
                  {
                     break;
                  }
               }
               continue loop0;
            }
            return;
         }
      }
      
      private function §^!<§(param1:int, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §1+§));
         }
         var _loc3_:* = §§pop();
         var _loc4_:*;
         this.§5W§[_loc4_ = _loc3_++] = this.§5W§[_loc4_] * param2;
         var _loc5_:*;
         this.§5W§[_loc5_ = _loc3_++] = this.§5W§[_loc5_] * param2;
         var _loc6_:*;
         this.§5W§[_loc6_ = _loc3_++] = this.§5W§[_loc6_] * param2;
         if(_loc7_ || _loc3_)
         {
            this.§5W§[_loc3_] *= param2;
         }
      }
      
      public function §9!,§(param1:int) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         §§push(param1);
         if(_loc7_)
         {
            §§push(int(§§pop() * §1+§));
         }
         var _loc2_:* = §§pop();
         if(_loc7_)
         {
            if(this.§40§)
            {
               addr34:
               §§push(Number(this.§5W§[_loc2_ + 3]));
               if(_loc8_ && this)
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
            if(_loc7_)
            {
               §§push(_loc3_);
               loop0:
               while(§§pop() != 0)
               {
                  while(true)
                  {
                     §§push(255);
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§push(§§pop() / _loc3_);
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        while(_loc7_ || this)
                        {
                           _loc3_ = §§pop();
                        }
                        continue loop0;
                     }
                  }
                  return §§pop();
               }
               addr199:
               §§goto(addr200);
               §§push(0);
            }
            loop4:
            while(true)
            {
               §§push(this.§5W§[_loc2_] * _loc3_);
               loop5:
               while(true)
               {
                  §§push(Number(§§pop()));
                  loop6:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     loop7:
                     while(!(_loc8_ && param1))
                     {
                        §§push(this.§5W§[_loc2_ + 1] * _loc3_);
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              continue loop5;
                           }
                           if(!_loc7_)
                           {
                              break;
                           }
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              _loc5_ = §§pop();
                              continue loop4;
                           }
                           addr78:
                           if(_loc8_ && _loc2_)
                           {
                              continue;
                           }
                           if(!(_loc7_ || param1))
                           {
                              continue loop6;
                           }
                           if(_loc7_)
                           {
                              addr105:
                              §§push(Number(§§pop()));
                              if(_loc7_)
                              {
                                 _loc6_ = §§pop();
                                 if(_loc7_ || _loc2_)
                                 {
                                    if(!(_loc8_ && _loc2_))
                                    {
                                       return §+%§.§"!0§(_loc4_,_loc5_,_loc6_);
                                    }
                                    continue loop7;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr137);
                           }
                           else
                           {
                              §§goto(addr177);
                           }
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr170);
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      public function §'7§(param1:int, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            §§push(param2);
            if(!(_loc5_ && param1))
            {
               if(§§pop() < 0.001)
               {
                  if(!_loc5_)
                  {
                     §§push(0.001);
                     if(!_loc5_)
                     {
                        addr130:
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           param2 = §§pop();
                        }
                        addr130:
                     }
                     §§goto(addr130);
                  }
                  while(true)
                  {
                  }
                  addr131:
               }
               while(true)
               {
                  if(!this.§40§)
                  {
                     §§push(param1);
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop() * §1+§);
                        if(_loc4_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(§§pop() + 3);
                           }
                           else
                           {
                              §§goto(addr130);
                           }
                        }
                        §§push(int(§§pop()));
                     }
                     _loc3_ = §§pop();
                     while(true)
                     {
                        if(!(_loc5_ && param2))
                        {
                           continue;
                        }
                     }
                     addr101:
                     if(!_loc5_)
                     {
                        break;
                     }
                     continue;
                  }
                  this.§,!;§(param1,this.§9!,§(param1),param2);
                  §§goto(addr101);
               }
               §§goto(addr21);
            }
            §§goto(addr130);
         }
         §§goto(addr45);
      }
      
      public function §2!4§(param1:int) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() * §1+§);
            if(_loc3_ || this)
            {
               §§push(§§pop() + 3);
            }
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         return this.§5W§[_loc2_];
      }
      
      public function setTexCoords(param1:int, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(!(_loc6_ && param3))
         {
            §§push(int(§§pop() * each));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || param3)
         {
            this.§3!]§.position = _loc4_ * §],§;
            while(true)
            {
               this.§3!]§.writeFloat(param2);
               §§goto(addr80);
            }
         }
         addr80:
         while(true)
         {
            this.§3!]§.writeFloat(param3);
            if(!(_loc6_ && param1))
            {
               if(!_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function getTexCoords(param1:int, param2:Point) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop() * each));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            this.§3!]§.position = _loc3_ * §],§;
            while(true)
            {
               param2.x = this.§3!]§.readFloat();
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            param2.y = this.§3!]§.readFloat();
            if(!(_loc4_ && param2))
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §8l§(param1:int, param2:Number, param3:Number, param4:Number = 0.0) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(int(§§pop() * §+!;§));
         }
         var _loc5_:* = §§pop();
         var _loc6_:*;
         this.§+2§[_loc6_ = _loc5_++] = this.§+2§[_loc6_] + param2;
         var _loc7_:*;
         this.§+2§[_loc7_ = _loc5_++] = this.§+2§[_loc7_] + param3;
         if(!(_loc8_ && param3))
         {
            this.§+2§[_loc5_] += param4;
         }
      }
      
      public function § !!§(param1:int, param2:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(int(§§pop() * §+!;§));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            this.§while§[0] = this.§+2§[_loc3_];
            loop0:
            while(true)
            {
               this.§while§[1] = this.§+2§[_loc3_ + 1];
               while(true)
               {
                  this.§while§[2] = this.§+2§[_loc3_ + 2];
                  addr119:
                  while(_loc5_ || _loc3_)
                  {
                     param2.transformVectors(this.§while§,this.§while§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §2N§(param1:uint, param2:Number = 1.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && _loc3_))
         {
            §§push(param2);
            if(!_loc7_)
            {
               if(§§pop() < 0.001)
               {
                  if(!(_loc7_ && param1))
                  {
                     §§push(0.001);
                     if(_loc8_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_)
                        {
                           addr47:
                           param2 = §§pop();
                           if(_loc8_)
                           {
                              addr50:
                              if(this.§40§)
                              {
                                 addr53:
                                 §§push(param2);
                                 if(!_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc7_)
                                    {
                                    }
                                    addr70:
                                    var _loc3_:* = §§pop();
                                    if(_loc8_)
                                    {
                                       §§push(_loc3_);
                                       if(_loc8_ || _loc3_)
                                       {
                                          §§push(§§pop() / 255);
                                          if(_loc8_)
                                          {
                                             addr95:
                                             §§push(Number(§§pop()));
                                             if(!(_loc7_ && param1))
                                             {
                                                _loc3_ = §§pop();
                                                addr104:
                                                §§push(§+%§.§<#§(param1) * _loc3_);
                                                if(_loc7_)
                                                {
                                                }
                                                §§goto(addr112);
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          addr112:
                                          var _loc4_:* = §§pop();
                                          §§push(§+%§.§4!V§(param1) * _loc3_);
                                          if(_loc8_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc5_:* = §§pop();
                                          §§push(§+%§.§7h§(param1) * _loc3_);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc6_:* = §§pop();
                                          if(_loc8_ || param1)
                                          {
                                             this.§;!T§(0,this.§]!k§,_loc4_,_loc5_,_loc6_,param2);
                                          }
                                          return;
                                       }
                                       §§goto(addr95);
                                    }
                                    §§goto(addr104);
                                 }
                                 addr69:
                                 §§push(Number(§§pop()));
                              }
                              else
                              {
                                 §§push(Number(1));
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§goto(addr69);
                                 }
                              }
                              §§goto(addr70);
                           }
                        }
                        §§goto(addr53);
                     }
                     §§goto(addr47);
                  }
                  §§goto(addr53);
               }
               §§goto(addr50);
            }
            §§goto(addr47);
         }
         §§goto(addr50);
      }
      
      public function §,;§(param1:int, param2:int, param3:Number, param4:Number, param5:Number, param6:Number = 1.0) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || this)
         {
            §§push(param6);
            if(_loc13_ || param1)
            {
               if(§§pop() < 0.001)
               {
                  if(_loc13_)
                  {
                     §§push(0.001);
                     if(!(_loc14_ && param2))
                     {
                        addr43:
                        §§push(Number(§§pop()));
                        if(!_loc14_)
                        {
                           §§goto(addr46);
                        }
                        §§goto(addr52);
                     }
                     addr46:
                     param6 = §§pop();
                     §§goto(addr47);
                  }
                  addr47:
                  §§push(param1);
                  if(_loc13_)
                  {
                     addr52:
                     §§push(int(§§pop() * §1+§));
                  }
                  var _loc7_:* = §§pop();
                  var _loc8_:int = 0;
                  while(_loc8_ < param2)
                  {
                     var _loc9_:*;
                     this.§5W§[_loc9_ = _loc7_++] = param3;
                     if(_loc13_ || param2)
                     {
                        var _loc10_:*;
                        this.§5W§[_loc10_ = _loc7_++] = param4;
                        if(_loc13_)
                        {
                           var _loc11_:*;
                           this.§5W§[_loc11_ = _loc7_++] = param5;
                           if(!_loc14_)
                           {
                              var _loc12_:*;
                              this.§5W§[_loc12_ = _loc7_++] = param6;
                           }
                        }
                     }
                     if(!(_loc14_ && param2))
                     {
                        _loc8_++;
                        if(!(_loc13_ || param3))
                        {
                           break;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr46);
            }
            §§goto(addr43);
         }
         §§goto(addr46);
      }
      
      public function §0!^§(param1:int, param2:Number) : void
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
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(0.001);
                     if(!(_loc6_ && param1))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           param2 = §§pop();
                           if(!(_loc6_ && this))
                           {
                              addr56:
                              §§push(param2);
                              if(_loc5_ || _loc3_)
                              {
                                 addr64:
                                 if(§§pop() == 1)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§goto(addr73);
                                    }
                                 }
                                 §§push(param1);
                                 if(_loc5_ || param1)
                                 {
                                    addr84:
                                    §§push(int(§§pop() * §1+§));
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!_loc6_)
                                 {
                                    if(this.§40§)
                                    {
                                       addr249:
                                       §§push(Number(this.§5W§[_loc3_ + 3]));
                                       loop0:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop1:
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(!_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             addr233:
                                             addr235:
                                             _loc4_ = Number(§§pop());
                                             while(true)
                                             {
                                                this.§5W§[_loc3_] *= _loc4_;
                                                while(!(_loc6_ && this))
                                                {
                                                   this.§5W§[_loc3_ + 1] *= _loc4_;
                                                   loop6:
                                                   while(true)
                                                   {
                                                      this.§5W§[_loc3_ + 2] *= _loc4_;
                                                      addr170:
                                                      addr177:
                                                      while(!(_loc5_ || param2))
                                                      {
                                                         continue loop6;
                                                      }
                                                      this.§5W§[_loc3_ + 3] = param2;
                                                   }
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr89:
                                                      return;
                                                      addr154:
                                                   }
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       this.§5W§[_loc3_ + 3] *= param2;
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§goto(addr249);
                                             }
                                             §§goto(addr89);
                                          }
                                          §§goto(addr235);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§goto(addr147);
                                       }
                                       §§goto(addr170);
                                       §§goto(addr177);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr193);
                              }
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr84);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr64);
         }
         addr73:
      }
      
      public function §3!A§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(!_loc9_)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§40§)
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
                           §§push(this.§]!k§);
                           loop2:
                           while(true)
                           {
                              §§push(int(§§pop() * §1+§));
                              loop3:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr252:
                                 addr224:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(!_loc9_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 if(_loc8_)
                                 {
                                    if(_loc8_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc8_)
                                          {
                                             if(§§pop() >= _loc3_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      break loop1;
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         if(_loc8_ || this)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(§§pop() != 0)
                                                               {
                                                                  loop7:
                                                                  for(; !_loc9_; if(!(_loc8_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  },if(_loc8_ || this)
                                                                  {
                                                                     break loop6;
                                                                  },§§goto(addr191))
                                                                  {
                                                                     §§push(_loc7_);
                                                                     if(_loc8_)
                                                                     {
                                                                        loop22:
                                                                        while(_loc8_)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(§§pop() / _loc6_);
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc8_ || param2)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop24:
                                                                                       while(_loc8_ || param1)
                                                                                       {
                                                                                          _loc7_ = §§pop();
                                                                                          while(_loc8_)
                                                                                          {
                                                                                             this.§^!<§(_loc4_,_loc7_);
                                                                                             loop9:
                                                                                             while(!_loc9_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc4_++;
                                                                                                   addr64:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   addr177:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr178:
                                                                                                      while(_loc9_ && param2)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            break loop24;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§40§);
                                                                                             addr190:
                                                                                             loop11:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      addr192:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr193:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               break loop11;
                                                                                                            }
                                                                                                            addr207:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr208:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr191:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      break loop11;
                                                                                                   }
                                                                                                   addr197:
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             §§goto(addr198);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          addr200:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   break loop7;
                                                                                                }
                                                                                                addr167:
                                                                                                §§push(1);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc8_ || this)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      break loop22;
                                                                                                   }
                                                                                                   §§goto(addr197);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr190);
                                                                                          }
                                                                                          §§goto(addr198);
                                                                                       }
                                                                                       addr145:
                                                                                    }
                                                                                    §§goto(addr165);
                                                                                 }
                                                                                 addr137:
                                                                              }
                                                                              §§goto(addr145);
                                                                           }
                                                                           §§goto(addr208);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              §§goto(addr177);
                                                                           }
                                                                           §§goto(addr193);
                                                                        }
                                                                        addr114:
                                                                     }
                                                                     §§goto(addr137);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§goto(addr165);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                               }
                                                               §§goto(addr62);
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr114);
                                                   }
                                                   continue;
                                                }
                                                addr52:
                                                if(_loc8_)
                                                {
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr64);
                                             }
                                             else
                                             {
                                                §§push(this.§2!4§(0));
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr167);
                                       }
                                       return;
                                       addr228:
                                    }
                                    break loop0;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr252);
                     }
                     break;
                  }
                  continue loop0;
               }
               this.§40§ = param1;
               §§goto(addr52);
            }
            return;
         }
         §§goto(addr228);
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return this.§40§;
      }
      
      public function get §-!n§() : int
      {
         return this.§]!k§;
      }
      
      public function set §-!n§(param1:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         if(_loc5_ || _loc2_)
         {
            §§push(param1);
            if(!_loc6_)
            {
               §§push(each);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() * §],§);
                     if(!_loc6_)
                     {
                        §§push(§§pop() - this.§3!]§.length);
                     }
                  }
                  §§push(int(§§pop()));
                  addr448:
                  §§push(0);
                  if(!(_loc5_ || param1))
                  {
                     continue;
                  }
                  if(§§pop() > §§pop())
                  {
                     loop7:
                     while(true)
                     {
                        if(!(_loc6_ && this))
                        {
                           this.§3!]§.position = _loc4_;
                           loop8:
                           while(true)
                           {
                              if(_loc5_ || this)
                              {
                                 addr441:
                                 §§push(0);
                                 if(!(_loc6_ && this))
                                 {
                                    addr409:
                                    if(_loc6_ && _loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 while(!(_loc6_ && _loc2_))
                                 {
                                    §§goto(addr448);
                                    §§goto(addr475);
                                 }
                                 addr475:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr441);
                                 }
                                 addr441:
                                 addr524:
                              }
                              while(true)
                              {
                                 §§push(int(this.§3!]§.length));
                                 break loop8;
                              }
                           }
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr492:
                              while(true)
                              {
                                 this.§3!]§.length += _loc2_;
                              }
                              §§goto(addr409);
                           }
                        }
                        addr485:
                        while(true)
                        {
                           §§goto(addr441);
                           continue loop7;
                        }
                     }
                  }
                  §§goto(addr383);
               }
            }
            §§goto(addr524);
         }
         §§goto(addr485);
      }
      
      public function get §^%§() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§3!]§.position = 0;
         }
         return this.§3!]§;
      }
      
      public function get §?c§() : Vector.<Number>
      {
         return this.§5W§;
      }
      
      public function get §%!0§() : Vector.<Number>
      {
         return this.§+2§;
      }
   }
}
