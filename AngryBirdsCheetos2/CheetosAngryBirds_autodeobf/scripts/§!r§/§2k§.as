package §!r§
{
   import §6!H§.b2Vec2;
   import §>^§.§!6§;
   import §]!S§.b2CircleShape;
   import §]!S§.b2PolygonShape;
   import §]!S§.b2Shape;
   
   public class §2k§
   {
      
      public static const § !<§:int = 0;
      
      public static const §^!_§:int = 1;
      
      public static const §6I§:int = 2;
      
      public static const §;!$§:int = 3;
      
      public static const §#N§:int = 4;
      
      public static const §<!"§:int = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § !<§ = 0;
            while(true)
            {
               §^!_§ = 1;
               loop1:
               while(true)
               {
                  §6I§ = 2;
                  while(true)
                  {
                     §;!$§ = 3;
                     addr52:
                     while(_loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               while(true)
               {
                  §#N§ = 4;
                  while(!_loc1_)
                  {
                     §<!"§ = 5;
                     if(_loc2_)
                     {
                        return;
                     }
                  }
                  §§goto(addr52);
               }
               addr68:
            }
         }
         §§goto(addr68);
      }
      
      public var mName:String;
      
      public var §4`§:int;
      
      public var §]>§:Number;
      
      public var §7w§:Number;
      
      public var §4!h§:Number;
      
      public var §]L§:Array = null;
      
      public function §2k§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop4:
               while(_loc6_ || param1)
               {
                  this.§4!h§ = param5;
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
                  if(!_loc7_)
                  {
                     addr36:
                     if(!(_loc6_ || param2))
                     {
                        while(true)
                        {
                           this.§4`§ = this.§@!X§(param2);
                           while(true)
                           {
                              this.§]>§ = param3;
                              addr70:
                              while(_loc6_)
                              {
                                 this.§7w§ = param4;
                                 continue loop4;
                              }
                           }
                           §§goto(addr36);
                        }
                        addr94:
                     }
                     return;
                  }
                  §§goto(addr70);
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §'!3§() : int
      {
         return this.§4`§;
      }
      
      public function §[k§() : Number
      {
         return this.§]>§;
      }
      
      public function §>;§() : int
      {
         return this.§7w§;
      }
      
      private function §@!X§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != "Rectangle"; if(_loc3_ && _loc3_)
            {
               continue;
            },if(§§pop() != "Image_Circle")
            {
               while(true)
               {
                  §§push(§!6§);
                  §§push("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() + " invalid name = ");
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() + param1);
                     }
                  }
                  §§pop().log(§§pop());
                  if(!(_loc3_ && param1))
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§push(§;!$§);
                              if(_loc2_)
                              {
                                 if(_loc2_ || this)
                                 {
                                    return §§pop();
                                 }
                                 addr188:
                                 §§push(§#N§);
                                 if(_loc2_ || param1)
                                 {
                                    return §§pop();
                                 }
                                 addr225:
                                 return §§pop();
                              }
                              §§goto(addr100);
                           }
                           else
                           {
                              §§goto(addr136);
                           }
                           §§goto(addr181);
                        }
                        else if(_loc2_ || this)
                        {
                           if(_loc2_ || param1)
                           {
                              §§goto(addr168);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr97);
                  }
                  else
                  {
                     if(_loc2_ || _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!(_loc2_ || _loc3_))
                        {
                           break loop0;
                        }
                        §§goto(addr176);
                     }
                     else
                     {
                        §§goto(addr183);
                     }
                  }
                  §§goto(addr185);
               }
               §§goto(addr225);
            },§§goto(addr97))
            {
               while(true)
               {
                  §§push(param1);
                  addr185:
                  loop2:
                  while(§§pop() != "CIRCLE")
                  {
                     while(true)
                     {
                        §§push(param1);
                        loop4:
                        while(§§pop() != "POLYGON")
                        {
                           loop5:
                           while(true)
                           {
                              §§push(param1);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() == "Image_Rectangle")
                                 {
                                    addr173:
                                    return § !<§;
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop8:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop6;
                                          }
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(§§pop() == "Image_Polygon")
                                          {
                                             addr136:
                                             if(_loc3_)
                                             {
                                                continue loop5;
                                             }
                                             if(_loc3_ && _loc3_)
                                             {
                                                break loop4;
                                             }
                                             §§push(§^!_§);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!(_loc3_ && param1))
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop8;
                                                addr168:
                                             }
                                             addr97:
                                             if(!_loc2_)
                                             {
                                                break loop2;
                                             }
                                             §§push(§6I§);
                                             if(!_loc3_)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   return §§pop();
                                                }
                                                addr181:
                                                addr181:
                                                return §§pop();
                                             }
                                          }
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             return §§pop();
                                          }
                                       }
                                       continue loop2;
                                    }
                                    addr128:
                                 }
                                 return §§pop();
                              }
                           }
                        }
                        §§goto(addr181);
                     }
                  }
                  §§goto(addr188);
               }
            }
            §§goto(addr225);
            §§push(§;!$§);
         }
         §§goto(addr145);
      }
      
      public function §&!B§() : Array
      {
         return this.§]L§;
      }
      
      public function §?!&§(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]L§ = param1;
         }
      }
      
      public function §7!,§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§%!,§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this);
            §§push(_loc3_.x);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§]>§ = §§pop();
         }
         do
         {
            §§push(this);
            §§push(_loc3_.y);
            if(_loc4_)
            {
               §§push(§§pop() - _loc2_.y);
            }
            §§pop().§7w§ = §§pop();
         }
         while(!_loc4_);
         
      }
      
      public function §%!,§() : Array
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         loop0:
         for each(_loc6_ in this.§]L§)
         {
            if(!_loc11_)
            {
               §§push(_loc5_);
               if(_loc10_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc10_ || _loc2_)
                     {
                        §§push(_loc6_.x);
                        if(!(_loc11_ && _loc3_))
                        {
                           §§push(§§pop());
                           if(!_loc11_)
                           {
                              var _loc9_:* = §§pop();
                              if(_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc10_ || this)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc11_ && _loc2_))
                                    {
                                       §§push(_loc9_);
                                       if(_loc10_)
                                       {
                                          if(!_loc11_)
                                          {
                                             addr101:
                                             §§push(Number(§§pop()));
                                             if(!(_loc11_ && _loc1_))
                                             {
                                                _loc1_ = §§pop();
                                                if(_loc10_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(!(_loc11_ && _loc3_))
                                                         {
                                                            addr137:
                                                            §§push(Number(§§pop()));
                                                            if(!(_loc11_ && this))
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr147:
                                                               §§push(_loc9_);
                                                               if(!(_loc11_ && _loc1_))
                                                               {
                                                                  addr165:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc11_)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(_loc10_)
                                                                     {
                                                                        addr304:
                                                                        _loc5_ = false;
                                                                     }
                                                                     else
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_.y);
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr208:
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc10_ || _loc2_)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   _loc4_ = §§pop();
                                                                                                   loop3:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         if(!(_loc11_ && this))
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               loop4:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  addr234:
                                                                                                                  loop5:
                                                                                                                  while(!_loc11_)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     loop6:
                                                                                                                     while(!_loc11_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              if(_loc10_ || _loc1_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                    addr249:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc11_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc10_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr172:
                                                                                                                                                   loop17:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc6_.y);
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            continue loop6;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc11_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop20;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               continue loop3;
                                                                                                                                                            }
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                         addr297:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                            {
                                                                                                                                                               addr298:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                  addr300:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr301:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc1_ = §§pop();
                                                                                                                                                                        addr302:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr298:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                               addr269:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  break loop6;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop2;
                                                                                                                                                }
                                                                                                                                                addr265:
                                                                                                                                             }
                                                                                                                                             addr280:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                break loop5;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr257:
                                                                                                                                       }
                                                                                                                                       §§goto(addr269);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr247:
                                                                                                                              }
                                                                                                                              §§goto(addr265);
                                                                                                                           }
                                                                                                                           §§goto(addr172);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop() > §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc11_ && this))
                                                                                                                           {
                                                                                                                              §§goto(addr280);
                                                                                                                              §§push(_loc6_.x);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                        §§goto(addr269);
                                                                                                                     }
                                                                                                                     while(_loc10_ || _loc3_)
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr300);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr298);
                                                                                                         }
                                                                                                         §§goto(addr302);
                                                                                                      }
                                                                                                      §§goto(addr284);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr249);
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                       }
                                                                                       addr207:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr296:
                                                                                    }
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 §§goto(addr301);
                                                                              }
                                                                              §§goto(addr234);
                                                                           }
                                                                           §§goto(addr208);
                                                                        }
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  §§goto(addr177);
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                         }
                                                         §§goto(addr147);
                                                      }
                                                      §§goto(addr239);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr298);
                                             }
                                             §§goto(addr301);
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr137);
                                    }
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr239);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr247);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr296);
               }
               §§goto(addr304);
            }
            §§goto(addr302);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §?!V§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§4`§);
         if(!(_loc9_ && _loc2_))
         {
            var _loc7_:* = §§pop();
            if(_loc10_ || _loc2_)
            {
               §§push(§#N§);
               if(_loc10_)
               {
                  §§push(_loc7_);
                  if(_loc10_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc9_)
                           {
                              addr177:
                              if(§§pop() === _loc7_)
                              {
                                 addr179:
                                 §§push(1);
                                 if(!_loc9_)
                                 {
                                    addr192:
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr179);
                     }
                     else
                     {
                        §§push(§<!"§);
                        if(!(_loc9_ && this))
                        {
                           §§goto(addr177);
                        }
                     }
                     §§goto(addr192);
                  }
               }
               §§goto(addr177);
            }
            §§goto(addr179);
         }
         addr198:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc10_ || param1)
               {
                  §§push(_loc2_);
                  §§push(this.§]>§);
                  if(_loc10_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().§#!3§(§§pop());
                  if(!_loc9_)
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§&!B§();
               (_loc4_ = new b2PolygonShape()).§<G§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§9J§();
               if(!_loc9_)
               {
                  _loc7_ = 0;
                  if(_loc10_)
                  {
                     for each(_loc6_ in _loc5_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.x);
                        if(_loc10_)
                        {
                           §§push(§§pop() * param1);
                        }
                        §§pop().x = §§pop();
                        if(_loc10_)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.y);
                           if(_loc10_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().y = §§pop();
                        }
                     }
                  }
                  if(_loc9_)
                  {
                     break;
                  }
               }
               return _loc4_;
         }
         return null;
      }
   }
}
