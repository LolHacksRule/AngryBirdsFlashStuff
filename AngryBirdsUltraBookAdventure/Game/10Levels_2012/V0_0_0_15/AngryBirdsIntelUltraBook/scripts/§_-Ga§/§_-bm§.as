package §_-Ga§
{
   import §_-0BV§.*;
   import §_-0DG§.§_-0-A§;
   import §_-0DG§.§_-09t§;
   import §_-JK§.§_-S2§;
   import §_-TG§.§_-00u§;
   import §_-by§.§_-CE§;
   import §_-by§.§_-Tr§;
   import §_-by§.§_-fi§;
   import flash.geom.Point;
   
   public class §_-bm§
   {
      
      public static const §_-0A0§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-0A0§ = "BACKGROUND_BLUE_GRASS";
         }
      }
      
      public var §_-7M§:Number = 0;
      
      public var §_-Rc§:Number = -8;
      
      private var §_-057§:Vector.<§_-CE§> = null;
      
      private var §_-j9§:Vector.<§_-Tr§> = null;
      
      private var §_-T3§:Vector.<§_-fi§> = null;
      
      private var §_-WA§:Vector.<§_-2w§> = null;
      
      public var §_-w1§:Number = 0;
      
      public var §_-vc§:Boolean = false;
      
      public var §_-Td§:int = 0;
      
      public var §_-iC§:int = 0;
      
      private var §_-EA§:int = 0;
      
      private var §_-6N§:String = null;
      
      public var mName:String = null;
      
      public function §_-bm§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§_-WA§ = new Vector.<§_-2w§>();
               addr109:
               while(true)
               {
                  this.§_-057§ = new Vector.<§_-CE§>();
               }
               addr68:
               if(!(_loc2_ && this))
               {
                  this.§_-6N§ = §_-0A0§;
                  addr85:
                  if(!_loc1_)
                  {
                     loop4:
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           addr59:
                           if(_loc1_ || this)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§goto(addr68);
                           }
                           while(true)
                           {
                              this.§_-j9§ = new Vector.<§_-Tr§>();
                              §§goto(addr59);
                           }
                           addr101:
                        }
                        while(true)
                        {
                           this.§_-T3§ = new Vector.<§_-fi§>();
                           continue loop4;
                        }
                     }
                     §§goto(addr109);
                  }
                  return;
               }
            }
         }
         §§goto(addr101);
      }
      
      public static function §_-04-§(param1:String) : §_-bm§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§_-bm§ = new §_-bm§();
         if(_loc3_ || §_-bm§)
         {
            _loc2_.§_-Wi§(param1);
         }
         return _loc2_;
      }
      
      public static function §_-r-§(param1:§_-0-A§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1.§_-kD§);
            while(true)
            {
               §§push(§_-0-A§.§_-Zt§);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param1.§_-kD§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§_-0-A§.§_-OZ§);
                                    addr109:
                                    while(!(_loc2_ && param1))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc3_)
                                       {
                                          if(!(_loc2_ && §_-bm§))
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr78:
                                                      if(_loc2_ && param1)
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc2_ && §_-bm§))
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(true);
                                                                  break;
                                                               }
                                                               addr142:
                                                               while(!(_loc2_ && _loc3_))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         §§push(false);
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         continue loop4;
                                                      }
                                                      return §§pop();
                                                      addr85:
                                                   }
                                                   addr141:
                                                }
                                                else
                                                {
                                                   §§goto(addr85);
                                                }
                                                §§goto(addr142);
                                             }
                                             continue loop3;
                                             addr136:
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr141);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        §§goto(addr136);
                     }
                  }
               }
               if(!(_loc3_ || §_-bm§))
               {
                  continue;
               }
               §§push(§_-0-A§.§_-FB§);
               if(_loc3_ || param1)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || param1)
                  {
                     §§goto(addr78);
                  }
                  §§goto(addr102);
               }
               §§goto(addr109);
            }
         }
         §§goto(addr149);
      }
      
      public static function §_-009§(param1:String) : §_-bm§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§_-bm§ = §_-04-§(param1);
         if(_loc4_ || param1)
         {
            _loc2_.§_-7M§ = _loc2_.§_-j9§[0].x;
            if(_loc4_)
            {
               addr37:
               _loc2_.§_-Rc§ = _loc2_.§_-j9§[0].y - 8.5;
            }
            var _loc3_:* = Number(0);
            while(true)
            {
               §§push(_loc3_);
               if(!_loc5_)
               {
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() >= _loc2_.§_-057§.length)
                     {
                        if(!(_loc4_ || param1))
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc2_.§_-057§[_loc3_].angle = 360 - _loc2_.§_-057§[_loc3_].angle;
                     }
                     addr109:
                     §§push(_loc3_);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     _loc3_ = §§pop();
                     continue;
                  }
                  §§push(Number(§§pop()));
               }
               §§goto(addr109);
            }
            return _loc2_;
         }
         §§goto(addr37);
      }
      
      protected static function §_-59§(param1:int, param2:Object) : Vector.<§_-fi§>
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Object = null;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:§_-fi§ = null;
         var _loc3_:Vector.<§_-fi§> = new Vector.<§_-fi§>();
         var _loc4_:int = 1;
         while(_loc4_ <= param1)
         {
            if((_loc5_ = param2["joint_" + _loc4_]) != null)
            {
               if(_loc9_)
               {
                  continue;
               }
               _loc6_ = new Point(_loc5_.x1,_loc5_.y1);
               _loc7_ = new Point(_loc5_.x2,_loc5_.y2);
               _loc8_ = null;
               if(!_loc9_)
               {
                  §§push(_loc5_.type == §_-fi§.§_-N0§);
                  if(_loc10_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc9_ && §_-bm§))
                        {
                           addr88:
                           §§pop();
                           if(!_loc9_)
                           {
                              addr106:
                              if(_loc5_.type == §_-fi§.§_-37§)
                              {
                                 addr107:
                                 _loc8_ = new §_-fi§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected,_loc5_.limit,_loc5_.lowerLimit,_loc5_.upperLimit,_loc5_.motor,_loc5_.motorSpeed,_loc5_.backAndForth,_loc5_.maxTorque);
                                 if(_loc10_)
                                 {
                                    if(_loc5_.type == §_-fi§.§_-37§)
                                    {
                                       if(_loc10_)
                                       {
                                          _loc8_.axisX = _loc5_.axisX;
                                          if(_loc10_)
                                          {
                                             addr150:
                                             _loc8_.axisY = _loc5_.axisY;
                                             if(!_loc9_)
                                             {
                                                addr181:
                                                if(_loc5_.type == §_-fi§.§_-09G§)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      _loc8_.§_-0e§ = _loc5_.destroyTimer;
                                                      if(_loc9_ && param2)
                                                      {
                                                      }
                                                      addr202:
                                                      _loc4_++;
                                                      continue;
                                                   }
                                                   §§goto(addr202);
                                                }
                                                addr156:
                                             }
                                          }
                                          _loc3_.push(_loc8_);
                                          §§goto(addr202);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr150);
                              }
                              else
                              {
                                 _loc8_ = new §_-fi§(_loc5_.type,_loc5_.index1,_loc5_.index2,_loc6_,_loc7_,_loc5_.collideConnected);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr88);
               }
               §§goto(addr106);
            }
            §§goto(addr202);
         }
         return _loc3_;
      }
      
      public function get §_-uM§() : int
      {
         return this.§_-057§.length;
      }
      
      public function get §_-zw§() : int
      {
         return this.§_-T3§.length;
      }
      
      public function get §_-9m§() : int
      {
         return this.§_-j9§.length;
      }
      
      public function get §_-aj§() : int
      {
         return this.§_-WA§.length;
      }
      
      public function get theme() : String
      {
         return this.§_-6N§;
      }
      
      public function set theme(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-6N§ = param1;
         }
      }
      
      public function getEagleScore() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§_-LO§());
         if(_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr136:
                           loop5:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr118:
                              while(true)
                              {
                                 §§push(this.§_-EA§);
                                 addr120:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(_loc2_)
                                    {
                                       break loop5;
                                    }
                                    continue loop8;
                                 }
                              }
                              continue loop8;
                           }
                        }
                        addr135:
                     }
                     loop2:
                     while(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§_-EA§);
                           loop4:
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 §§push(0);
                                 if(_loc2_ || _loc3_)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(_loc1_);
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       if(_loc3_)
                                       {
                                          break loop2;
                                       }
                                       if(!_loc3_)
                                       {
                                          while(true)
                                          {
                                          }
                                          addr115:
                                       }
                                       else
                                       {
                                          §§goto(addr136);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§_-EA§);
                                       if(_loc3_)
                                       {
                                          break loop4;
                                       }
                                       if(_loc2_ || this)
                                       {
                                          return §§pop();
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr118);
                           }
                           while(true)
                           {
                              if(_loc3_ && this)
                              {
                                 return §§pop();
                              }
                              addr126:
                              if(!_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr126);
                     §§push(_loc1_);
                  }
                  §§goto(addr135);
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §_-1Q§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-LO§());
         if(!(_loc4_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(0);
               addr101:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc4_)
                  {
                     if(!§§pop())
                     {
                        while(!§§pop())
                        {
                           do
                           {
                              this.§_-EA§ = param1;
                           }
                           while(_loc4_ && _loc2_);
                           
                           if(_loc4_)
                           {
                              break;
                           }
                           if(_loc3_ || _loc2_)
                           {
                              return;
                           }
                           §§push(§§pop() < §§pop());
                           continue loop0;
                           if(_loc3_ || _loc3_)
                           {
                              continue;
                           }
                           addr106:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr106:
                        }
                        return;
                        addr95:
                     }
                  }
                  §§goto(addr106);
               }
            }
            addr100:
         }
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§goto(addr87);
               }
               else
               {
                  §§goto(addr101);
               }
            }
            else
            {
               §§goto(addr100);
            }
            §§goto(addr101);
            §§goto(addr106);
         }
      }
      
      public function §_-Wi§(param1:String) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:§_-2w§ = null;
         var _loc5_:Object = null;
         var _loc6_:§_-Tr§ = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:§_-CE§ = null;
         var _loc2_:Object = JSON.parse(param1);
         if(_loc10_)
         {
            this.§_-w1§ = _loc2_.LevelExtension;
            loop0:
            while(true)
            {
               this.§_-vc§ = false;
               loop1:
               while(true)
               {
                  this.§_-Td§ = _loc2_.scoreSilver;
                  loop2:
                  while(true)
                  {
                     this.§_-iC§ = _loc2_.scoreGold;
                     loop3:
                     while(true)
                     {
                        this.§_-EA§ = _loc2_.scoreEagle;
                        while(true)
                        {
                           this.§_-6N§ = _loc2_.theme;
                           continue loop1;
                           addr123:
                           loop6:
                           for(; _loc10_ || _loc2_; while(!(_loc11_ && _loc2_))
                           {
                              while(true)
                              {
                                 this.§_-T3§ = §_-59§(_loc2_.counts.joints,_loc2_.world);
                                 §§goto(addr115);
                              }
                              §§goto(addr86);
                           })
                           {
                              if(_loc10_)
                              {
                                 if(_loc2_.counts.joints)
                                 {
                                    continue;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    this.§_-WA§ = new Vector.<§_-2w§>();
                                    while(!(_loc11_ && param1))
                                    {
                                       if(_loc10_ || _loc3_)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             this.§_-j9§ = new Vector.<§_-Tr§>();
                                             addr64:
                                             while(!(_loc11_ && param1))
                                             {
                                                this.§_-057§ = new Vector.<§_-CE§>();
                                                if(!_loc11_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      break loop10;
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop10;
                                                   }
                                                   var _loc3_:* = Number(0);
                                                   addr317:
                                                   §§push(_loc3_);
                                                   if(!_loc11_)
                                                   {
                                                      if(§§pop() < _loc2_.camera.length)
                                                      {
                                                         (_loc4_ = new §_-2w§()).x = _loc2_.camera[_loc3_].x;
                                                         if(!(_loc11_ && _loc2_))
                                                         {
                                                            _loc4_.y = _loc2_.camera[_loc3_].y;
                                                            _loc4_.left = _loc2_.camera[_loc3_].left;
                                                            _loc4_.right = _loc2_.camera[_loc3_].right;
                                                            _loc4_.top = _loc2_.camera[_loc3_].top;
                                                            addr316:
                                                            addr289:
                                                            if(_loc10_ || _loc3_)
                                                            {
                                                               _loc4_.bottom = _loc2_.camera[_loc3_].bottom;
                                                               addr257:
                                                               if(!(_loc11_ && this))
                                                               {
                                                                  _loc4_.id = _loc2_.camera[_loc3_].id;
                                                                  addr227:
                                                                  this.§_-WA§.push(_loc4_);
                                                                  addr248:
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() + 1);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        if(!_loc11_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr227);
                                                                                 }
                                                                                 §§goto(addr317);
                                                                              }
                                                                              §§goto(addr316);
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr316);
                                                            }
                                                            addr298:
                                                            §§goto(addr298);
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                      if(!_loc11_)
                                                      {
                                                         §§push(1);
                                                         if(_loc10_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc10_)
                                                            {
                                                               §§goto(addr332);
                                                            }
                                                            §§goto(addr428);
                                                         }
                                                      }
                                                      §§goto(addr420);
                                                   }
                                                }
                                                continue;
                                                addr332:
                                                _loc3_ = §§pop();
                                                if(!(_loc11_ && this))
                                                {
                                                   addr405:
                                                   §§push(_loc3_);
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      if(§§pop() <= _loc2_.counts.birds)
                                                      {
                                                         _loc5_ = _loc2_.world["bird_" + _loc3_];
                                                         (_loc6_ = new §_-Tr§()).x = _loc5_.x;
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            _loc6_.y = _loc5_.y;
                                                            _loc6_.id = _loc5_.id;
                                                            addr404:
                                                         }
                                                         addr388:
                                                         this.§_-j9§.push(_loc6_);
                                                         addr399:
                                                         addr393:
                                                         §§push(_loc3_);
                                                         if(_loc10_ || param1)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            if(_loc10_)
                                                            {
                                                               addr378:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc3_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr388);
                                                                     }
                                                                     §§goto(addr405);
                                                                  }
                                                                  §§goto(addr404);
                                                               }
                                                               §§goto(addr399);
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                         §§goto(addr378);
                                                      }
                                                      if(_loc10_)
                                                      {
                                                         addr420:
                                                         §§push(Number(1));
                                                         if(_loc10_ || this)
                                                         {
                                                            §§goto(addr428);
                                                         }
                                                         §§goto(addr609);
                                                      }
                                                      §§goto(addr621);
                                                   }
                                                   addr428:
                                                   _loc3_ = §§pop();
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      addr609:
                                                      if(_loc3_ <= _loc2_.counts.blocks)
                                                      {
                                                         §§push("block_");
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() + _loc3_);
                                                         }
                                                         _loc7_ = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            _loc8_ = _loc2_.world[_loc7_];
                                                            (_loc9_ = new §_-CE§()).x = _loc8_.x;
                                                            if(!_loc11_)
                                                            {
                                                               _loc9_.y = _loc8_.y;
                                                            }
                                                            _loc9_.id = _loc8_.id;
                                                            addr608:
                                                            addr603:
                                                            §§push(Boolean(_loc8_.uniqueID));
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr577:
                                                                  §§pop();
                                                                  addr578:
                                                                  if(_loc10_)
                                                                  {
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        §§push(_loc8_.uniqueID.length > 0);
                                                                        if(_loc10_)
                                                                        {
                                                                           addr543:
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc11_ && _loc2_))
                                                                              {
                                                                                 _loc9_.uniqueID = _loc8_.uniqueID;
                                                                              }
                                                                              addr556:
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 addr512:
                                                                                 if(_loc8_.front)
                                                                                 {
                                                                                    addr516:
                                                                                    if(_loc10_ || param1)
                                                                                    {
                                                                                       _loc9_.front = _loc8_.front;
                                                                                       addr499:
                                                                                       _loc9_.angle = _loc8_.angle;
                                                                                       addr504:
                                                                                       if(!(_loc11_ && this))
                                                                                       {
                                                                                          addr491:
                                                                                          this.§_-057§.push(_loc9_);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() + 1);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             _loc3_ = §§pop();
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr491);
                                                                                                      }
                                                                                                      §§goto(addr609);
                                                                                                   }
                                                                                                   addr534:
                                                                                                   §§goto(addr512);
                                                                                                }
                                                                                                §§goto(addr516);
                                                                                             }
                                                                                             §§goto(addr491);
                                                                                          }
                                                                                          §§goto(addr504);
                                                                                       }
                                                                                       addr527:
                                                                                       §§goto(addr527);
                                                                                    }
                                                                                    §§goto(addr556);
                                                                                 }
                                                                                 §§goto(addr499);
                                                                              }
                                                                              §§goto(addr578);
                                                                           }
                                                                           _loc9_.uniqueID = _loc7_;
                                                                           §§goto(addr534);
                                                                        }
                                                                        §§goto(addr577);
                                                                     }
                                                                     §§goto(addr608);
                                                                  }
                                                                  §§goto(addr603);
                                                               }
                                                               §§goto(addr543);
                                                            }
                                                            §§goto(addr577);
                                                         }
                                                         §§goto(addr627);
                                                      }
                                                      if(_loc10_ || param1)
                                                      {
                                                         addr621:
                                                         this.§_-7M§ = _loc2_.slingshotX;
                                                         if(_loc10_)
                                                         {
                                                            §§goto(addr627);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr627);
                                                }
                                                addr627:
                                                this.§_-Rc§ = _loc2_.slingshotY;
                                                return;
                                             }
                                             continue loop1;
                                          }
                                          continue;
                                       }
                                       continue loop6;
                                    }
                                    addr115:
                                    while(true)
                                    {
                                       if(_loc11_)
                                       {
                                          break loop8;
                                       }
                                       continue loop8;
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §_-076§() : Object
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Object = new Object();
         if(_loc3_ || _loc2_)
         {
            _loc1_.LevelExtension = this.§_-w1§;
            loop0:
            while(true)
            {
               _loc1_.scoreSilver = this.§_-Td§;
               while(true)
               {
                  _loc1_.scoreGold = this.§_-iC§;
                  loop2:
                  while(_loc3_ || _loc2_)
                  {
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     _loc1_.scoreEagle = this.§_-EA§;
                     loop3:
                     while(true)
                     {
                        _loc1_.theme = this.§_-6N§;
                        loop4:
                        while(true)
                        {
                           addr44:
                           while(true)
                           {
                              _loc1_.name = this.mName;
                              while(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    _loc1_.camera = this.§_-WA§;
                                    if(!_loc4_)
                                    {
                                       continue loop4;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §_-0-P§() : String
      {
         return JSON.stringify(this.§_-076§());
      }
      
      public function §_-LO§() : int
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§_-CE§ = null;
         var _loc3_:* = null;
         var _loc4_:§_-0-A§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§_-057§)
         {
            if(!(_loc7_ && _loc2_))
            {
               §§push(_loc2_.id);
               if(_loc8_ || _loc2_)
               {
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
            }
            §§push((_loc4_ = §_-09t§.§_-yf§(_loc3_)) == null);
            if(!(_loc7_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc7_ && _loc3_))
                  {
                     §§pop();
                     if(_loc8_)
                     {
                        §§push(_loc3_);
                        if(_loc8_ || this)
                        {
                           §§push(§§pop().indexOf("MISC_") == 0);
                           if(_loc8_)
                           {
                              addr110:
                              if(§§pop())
                              {
                                 if(_loc8_ || this)
                                 {
                                    addr131:
                                    §§push("MISC_FOOD_");
                                    if(_loc8_ || _loc2_)
                                    {
                                       §§push(§§pop() + _loc3_.substring(5));
                                    }
                                    _loc3_ = §§pop();
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       _loc4_ = §_-09t§.§_-yf§(_loc3_);
                                       addr144:
                                       if(_loc4_)
                                       {
                                          if(_loc7_)
                                          {
                                          }
                                          addr177:
                                          if(§_-r-§(_loc4_))
                                          {
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                addr198:
                                                §§push(_loc1_);
                                                if(!(_loc7_ && _loc1_))
                                                {
                                                   addr206:
                                                   §§push(_loc4_.§_-8l§);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() * §_-00u§.§_-KE§.getValue());
                                                   }
                                                   §§push(int(§§pop() + §§pop()));
                                                }
                                                _loc1_ = §§pop();
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    §§push(_loc1_);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(§§pop() + _loc4_.score);
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(int(§§pop()));
                                          if(_loc8_)
                                          {
                                             addr169:
                                             _loc1_ = §§pop();
                                             if(_loc8_ || _loc3_)
                                             {
                                                §§goto(addr177);
                                             }
                                             §§goto(addr198);
                                          }
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr177);
               }
            }
            §§goto(addr110);
         }
         return _loc1_;
      }
      
      public function §_-4J§() : XML
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§_-2w§ = null;
         var _loc3_:* = 0;
         var _loc1_:* = "";
         if(_loc6_)
         {
            §§push(_loc1_);
            while(true)
            {
               §§push("<Level background=\"ThemeHills\"");
               loop1:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  loop2:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(_loc1_);
                        while(true)
                        {
                           §§push(" LevelExtension=\"");
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() + this.§_-w1§);
                              loop6:
                              while(true)
                              {
                                 §§push("\"");
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop10:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             loop11:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(" AutoCamera=\"");
                                                   loop13:
                                                   while(!(_loc7_ && _loc1_))
                                                   {
                                                      if(_loc7_ && _loc2_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(§§pop() + this.§_-vc§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push("\"");
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop18:
                                                                  while(_loc6_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(" scoreSilver=\"");
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§_-Td§);
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 loop23:
                                                                                 while(_loc6_ || _loc3_)
                                                                                 {
                                                                                    §§push("\"");
                                                                                    loop24:
                                                                                    while(_loc6_ || _loc1_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr198:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             continue loop12;
                                                                                          }
                                                                                          addr119:
                                                                                          if(_loc7_ && this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!(_loc6_ || _loc3_))
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             _loc1_ = §§pop();
                                                                                             addr135:
                                                                                             loop40:
                                                                                             while(!_loc7_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   addr100:
                                                                                                   §§push(_loc1_);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc6_ || _loc1_)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr39:
                                                                                                            §§push("<Cameras>");
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  if(!(_loc7_ && _loc1_))
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  §§push(this.§_-iC§);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push("\"");
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                               addr143:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(!_loc7_)
                                                                                                               {
                                                                                                                  §§goto(addr119);
                                                                                                                  §§goto(addr39);
                                                                                                               }
                                                                                                               addr117:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr163:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr164:
                                                                                                                  while(!_loc7_)
                                                                                                                  {
                                                                                                                     _loc1_ = §§pop();
                                                                                                                     break loop40;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr142:
                                                                                                         }
                                                                                                         §§goto(addr143);
                                                                                                      }
                                                                                                      §§goto(addr164);
                                                                                                   }
                                                                                                   while(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                   addr100:
                                                                                                }
                                                                                                continue loop19;
                                                                                             }
                                                                                             while(!(_loc7_ && _loc2_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   addr98:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr100);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr63:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             continue loop3;
                                                                                             if(!(_loc6_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(!(_loc7_ && _loc2_))
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(!(_loc6_ || this))
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   _loc1_ = §§pop();
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr98);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         var _loc4_:int = 0;
                                                                                                         var _loc5_:* = this.§_-WA§;
                                                                                                         addr393:
                                                                                                         for each(_loc2_ in _loc5_)
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  §§push(" <Camera id=\"");
                                                                                                                  if(!(_loc7_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + _loc2_.id);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push("\" leftBorder=\"");
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc7_ && _loc1_))
                                                                                                                           {
                                                                                                                              addr309:
                                                                                                                              §§push(_loc2_.left);
                                                                                                                              if(!(_loc7_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push("\" rightBorder=\"");
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc2_.right);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                addr334:
                                                                                                                                                §§push("\" topBorder=\"");
                                                                                                                                                if(_loc6_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   addr342:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_.top);
                                                                                                                                                      if(_loc6_ || _loc1_)
                                                                                                                                                      {
                                                                                                                                                         addr354:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            addr357:
                                                                                                                                                            §§push("\" bottomBorder=\"");
                                                                                                                                                            if(!_loc7_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!(_loc7_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  addr368:
                                                                                                                                                                  §§push(_loc2_.top);
                                                                                                                                                                  if(_loc6_ || this)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr380:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(!(_loc7_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr392:
                                                                                                                                                                     _loc1_ = §§pop() + (§§pop() + "\"></Camera>");
                                                                                                                                                                     addr390:
                                                                                                                                                                     §§goto(addr393);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr390);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr380);
                                                                                                                                                      §§push(§§pop() + §_-S2§.§_-u-§);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr390);
                                                                                                                                             }
                                                                                                                                             §§goto(addr357);
                                                                                                                                          }
                                                                                                                                          §§goto(addr354);
                                                                                                                                       }
                                                                                                                                       §§goto(addr334);
                                                                                                                                    }
                                                                                                                                    §§goto(addr342);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr368);
                                                                                                                           }
                                                                                                                           §§goto(addr390);
                                                                                                                        }
                                                                                                                        §§goto(addr342);
                                                                                                                     }
                                                                                                                     §§goto(addr390);
                                                                                                                  }
                                                                                                                  §§goto(addr309);
                                                                                                               }
                                                                                                               §§goto(addr392);
                                                                                                            }
                                                                                                            §§goto(addr393);
                                                                                                         }
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            addr869:
                                                                                                            _loc1_ += "</Cameras>";
                                                                                                            addr863:
                                                                                                            addr848:
                                                                                                            addr842:
                                                                                                            addr861:
                                                                                                            addr831:
                                                                                                            addr864:
                                                                                                            addr862:
                                                                                                            §§push(_loc1_);
                                                                                                            §§push("<Slingshot x=\"" + this.§_-j9§[0].x);
                                                                                                            §§push("\" y=\"");
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               addr860:
                                                                                                               §§push(§§pop() + §§pop() + (this.§_-j9§[0].y - 8));
                                                                                                               §§push("\">");
                                                                                                            }
                                                                                                            _loc1_ = §§pop() + (§§pop() + §§pop());
                                                                                                            addr823:
                                                                                                            addr865:
                                                                                                            addr867:
                                                                                                            addr868:
                                                                                                            addr870:
                                                                                                            §§push(_loc1_ + " <Birds>");
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               _loc1_ = §§pop();
                                                                                                               addr819:
                                                                                                               _loc3_ = 0;
                                                                                                               addr697:
                                                                                                               addr828:
                                                                                                               addr820:
                                                                                                               if(_loc3_ >= this.§_-j9§.length)
                                                                                                               {
                                                                                                                  addr703:
                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr713:
                                                                                                                        §§push(_loc1_);
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr723:
                                                                                                                              §§push(" </Birds>");
                                                                                                                              if(!(_loc7_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr731:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    _loc1_ = §§pop();
                                                                                                                                    addr739:
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       addr676:
                                                                                                                                       §§push(_loc1_);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             addr681:
                                                                                                                                             §§push("</Slingshot>");
                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                addr689:
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                      addr694:
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         addr659:
                                                                                                                                                         §§push(0);
                                                                                                                                                         if(_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               addr664:
                                                                                                                                                               if(_loc6_ || _loc1_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     addr407:
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     if(_loc6_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop() >= this.§_-057§.length)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc1_);
                                                                                                                                                                              if(!(_loc7_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc6_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push("</Level>");
                                                                                                                                                                                    if(_loc6_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc7_ && _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc6_ || _loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc6_ || _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                      addr487:
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc6_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr664);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            return new XML(_loc1_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         _loc3_++;
                                                                                                                                                                                                         addr656:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc6_ || _loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr407);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr739);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr689);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr650:
                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr653:
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   if(_loc6_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc1_ = §§pop();
                                                                                                                                                                                                      §§goto(addr656);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr823);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr863);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr535:
                                                                                                                                                                                             §§push("\" x=\"");
                                                                                                                                                                                             if(_loc6_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + this.§_-057§[_loc3_].x);
                                                                                                                                                                                                         if(_loc6_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr563:
                                                                                                                                                                                                            §§push("\" y=\"");
                                                                                                                                                                                                            if(_loc6_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc6_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + this.§_-057§[_loc3_].y);
                                                                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr596:
                                                                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc7_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push("\" rotation=\"");
                                                                                                                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr609:
                                                                                                                                                                                                                                    §§push(§§pop() + §§pop() + this.§_-057§[_loc3_].angle);
                                                                                                                                                                                                                                    if(_loc6_ || _loc1_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc7_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr637:
                                                                                                                                                                                                                                             §§push("\" ></Item>");
                                                                                                                                                                                                                                             if(!_loc7_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr640:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(_loc6_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc7_ && _loc1_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr650);
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr848);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr723);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr791:
                                                                                                                                                                                                                                             §§push(§§pop() + (§§pop() + §§pop() + this.§_-j9§[_loc3_].y + "\"></Bird>"));
                                                                                                                                                                                                                                             if(_loc6_ || _loc1_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc1_ = §§pop();
                                                                                                                                                                                                                                                addr809:
                                                                                                                                                                                                                                                if(_loc6_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc3_++;
                                                                                                                                                                                                                                                   addr744:
                                                                                                                                                                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr697);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr865);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr828);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr867);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr868);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr791);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr637);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr842);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr681);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr609);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr776:
                                                                                                                                                                                                                  §§push(§§pop() + §§pop() + this.§_-j9§[_loc3_].x);
                                                                                                                                                                                                                  if(_loc6_ || _loc1_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr789:
                                                                                                                                                                                                                     §§goto(addr637);
                                                                                                                                                                                                                     §§push("\" y=\"");
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr637);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr609);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr596);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr776);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr563);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr861);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr609);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr640);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr676);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr653);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr487);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push("<Item id=\"");
                                                                                                                                                                              if(_loc6_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr535);
                                                                                                                                                                                       §§push(§§pop() + this.§_-057§[_loc3_].id);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr860);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr757:
                                                                                                                                                                                 if(_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + this.§_-j9§[_loc3_].id);
                                                                                                                                                                                    if(!_loc7_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc7_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr776);
                                                                                                                                                                                          §§push("\" x=\"");
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr863);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr789);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr860);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr563);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr713);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr653);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr659);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr703);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr694);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr819);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr809);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr637);
                                                                                                                                                }
                                                                                                                                                §§goto(addr731);
                                                                                                                                             }
                                                                                                                                             §§goto(addr637);
                                                                                                                                          }
                                                                                                                                          §§goto(addr831);
                                                                                                                                       }
                                                                                                                                       §§goto(addr864);
                                                                                                                                       addr741:
                                                                                                                                    }
                                                                                                                                    §§goto(addr744);
                                                                                                                                 }
                                                                                                                                 §§goto(addr863);
                                                                                                                              }
                                                                                                                              §§goto(addr862);
                                                                                                                           }
                                                                                                                           addr756:
                                                                                                                           §§goto(addr757);
                                                                                                                           §§push("  <Bird id=\"");
                                                                                                                        }
                                                                                                                        §§goto(addr637);
                                                                                                                     }
                                                                                                                     §§goto(addr870);
                                                                                                                  }
                                                                                                                  §§goto(addr820);
                                                                                                               }
                                                                                                               §§goto(addr756);
                                                                                                               §§push(_loc1_);
                                                                                                            }
                                                                                                            §§goto(addr869);
                                                                                                         }
                                                                                                         §§goto(addr741);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr135);
                                                                                                   }
                                                                                                   §§goto(addr100);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr198);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr163);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop10;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(!(_loc6_ || this))
                           {
                              continue;
                           }
                           _loc1_ = §§pop();
                           §§goto(addr214);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr174);
      }
      
      public function §_-086§(param1:int) : §_-CE§
      {
         return this.§_-057§[param1];
      }
      
      public function addObject(param1:§_-CE§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-057§.push(param1);
         }
      }
      
      public function §_-0Cb§(param1:int) : §_-fi§
      {
         return this.§_-T3§[param1];
      }
      
      public function § try§(param1:§_-fi§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§_-T3§.push(param1);
         }
      }
      
      public function §_-gz§(param1:int) : §_-Tr§
      {
         return this.§_-j9§[param1];
      }
      
      public function §_-0AY§(param1:§_-Tr§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-j9§.push(param1);
         }
      }
      
      public function §_-iT§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§_-WA§ = new Vector.<§_-2w§>();
         }
      }
      
      public function §_-GC§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§_-j9§ = new Vector.<§_-Tr§>();
         }
      }
      
      public function §_-jQ§(param1:int) : §_-2w§
      {
         return this.§_-WA§[param1];
      }
      
      public function §_-03T§(param1:§_-2w§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-WA§.push(param1);
         }
      }
   }
}
