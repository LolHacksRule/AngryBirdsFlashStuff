package §<!1§
{
   import §2!+§.b2CircleShape;
   import §2!+§.b2PolygonShape;
   import §2!+§.b2Shape;
   import §>H§.b2Vec2;
   import §^_§.§!>§;
   
   public class §2!W§
   {
      
      public static const §5!,§:int = 0;
      
      public static const §%!i§:int = 1;
      
      public static const §,]§:int = 2;
      
      public static const §,%§:int = 3;
      
      public static const §=!i§:int = 4;
      
      public static const §"d§:int = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §5!,§ = 0;
            while(true)
            {
               §%!i§ = 1;
               addr85:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §,%§ = 3;
               while(true)
               {
                  §=!i§ = 4;
                  while(!(_loc2_ && §2!W§))
                  {
                     §"d§ = 5;
                     if(!_loc1_)
                     {
                        continue;
                     }
                     addr34:
                     if(_loc1_ || §2!W§)
                     {
                        return;
                     }
                     while(_loc1_)
                     {
                        §§goto(addr85);
                        §§goto(addr34);
                     }
                     while(true)
                     {
                        §,]§ = 2;
                        §§goto(addr83);
                     }
                     addr83:
                     addr97:
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public var mName:String;
      
      public var §6r§:int;
      
      public var §'O§:Number;
      
      public var §!!A§:Number;
      
      public var §]!x§:Number;
      
      public var §9R§:Array = null;
      
      public function §2!W§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§6r§ = this.§=9§(param2);
                  addr86:
                  while(_loc7_ || param2)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §@!P§() : int
      {
         return this.§6r§;
      }
      
      public function §#g§() : Number
      {
         return this.§'O§;
      }
      
      public function §=!q§() : int
      {
         return this.§!!A§;
      }
      
      private function §=9§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("Rectangle");
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push("CIRCLE");
                        loop4:
                        while(!_loc2_)
                        {
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 §§push(param1);
                                 loop6:
                                 while(!(_loc2_ && this))
                                 {
                                    §§push("POLYGON");
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§push(param1);
                                             loop9:
                                             while(true)
                                             {
                                                §§push("Image_Rectangle");
                                                loop10:
                                                while(true)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         loop12:
                                                         while(!_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§push("Image_Polygon");
                                                               loop13:
                                                               while(!_loc2_)
                                                               {
                                                                  if(§§pop() == §§pop())
                                                                  {
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              addr200:
                                                                              §§push(§"d§);
                                                                              break;
                                                                           }
                                                                           addr108:
                                                                           addr216:
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_ && this)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr167:
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr170:
                                                                                    §§push(§5!,§);
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    break loop14;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc2_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§!>§);
                                                                                 §§push("WARNING LevelItemShape has invalid Shape Type, name = ");
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(this.mName);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc2_ && _loc3_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       addr51:
                                                                                       §§push(§§pop() + " invalid name = ");
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§push(param1);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§goto(addr51);
                                                                              }
                                                                           }
                                                                           §§goto(addr217);
                                                                        }
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        addr217:
                                                                        return §=!i§;
                                                                     }
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           addr152:
                                                                           §§push(§%!i§);
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     addr178:
                                                                     while(true)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push("Image_Circle");
                                                                        if(_loc2_ && param1)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(!(_loc3_ || _loc2_))
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§goto(addr108);
                                                                           }
                                                                           §§goto(addr95);
                                                                           §§push(§,]§);
                                                                        }
                                                                        §§goto(addr34);
                                                                        continue loop13;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   §§goto(addr167);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           §§goto(addr216);
                        }
                        continue loop1;
                     }
                  }
               }
               addr225:
               return §§pop();
            }
         }
         §§goto(addr178);
      }
      
      public function §!M§() : Array
      {
         return this.§9R§;
      }
      
      public function §]!H§(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9R§ = param1;
         }
      }
      
      public function §#!9§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Array = this.§%!x§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         if(!(_loc5_ && _loc1_))
         {
            §§push(this);
            §§push(_loc3_.x);
            if(!(_loc5_ && _loc1_))
            {
               §§push(§§pop() - _loc2_.x);
            }
            §§pop().§'O§ = §§pop();
            do
            {
               §§push(this);
               §§push(_loc3_.y);
               if(!_loc5_)
               {
                  §§push(§§pop() - _loc2_.y);
               }
               §§pop().§!!A§ = §§pop();
            }
            while(_loc5_);
            
         }
      }
      
      public function §%!x§() : Array
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:b2Vec2 = null;
         var _loc1_:* = Number(0);
         var _loc2_:* = Number(0);
         var _loc3_:* = Number(0);
         var _loc4_:* = Number(0);
         var _loc5_:Boolean = true;
         loop0:
         for each(_loc6_ in this.§9R§)
         {
            if(_loc11_)
            {
               §§push(_loc5_);
               if(!_loc10_)
               {
                  if(§§pop())
                  {
                     if(_loc11_)
                     {
                        §§push(_loc6_.x);
                        if(_loc11_)
                        {
                           §§push(§§pop());
                           if(_loc11_)
                           {
                              var _loc9_:* = §§pop();
                              if(!_loc10_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc10_)
                                 {
                                    _loc3_ = §§pop();
                                    if(!(_loc10_ && _loc2_))
                                    {
                                       §§push(_loc9_);
                                       if(_loc11_)
                                       {
                                          addr79:
                                          if(_loc11_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                addr95:
                                                _loc1_ = §§pop();
                                                if(_loc11_)
                                                {
                                                   §§push(_loc6_.y);
                                                   if(_loc11_ || _loc2_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc11_ || this)
                                                      {
                                                         addr115:
                                                         _loc9_ = §§pop();
                                                         if(_loc11_ || _loc1_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc11_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               addr128:
                                                               §§push(_loc9_);
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        addr305:
                                                                        _loc5_ = false;
                                                                        addr306:
                                                                        continue;
                                                                        addr306:
                                                                     }
                                                                     else
                                                                     {
                                                                        loop1:
                                                                        while(true)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           loop2:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_.y);
                                                                              loop3:
                                                                              while(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    loop4:
                                                                                    while(_loc11_ || _loc1_)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          loop5:
                                                                                          while(_loc11_)
                                                                                          {
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_.y);
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr260:
                                                                                                      loop7:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         loop8:
                                                                                                         while(!_loc10_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        if(!(_loc10_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           if(!_loc11_)
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              if(!(_loc10_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.y);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    addr267:
                                                                                                                                    if(_loc11_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          addr217:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!(_loc10_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          addr302:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc1_ = §§pop();
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr301:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       break loop4;
                                                                                                                                    }
                                                                                                                                    addr267:
                                                                                                                                 }
                                                                                                                                 §§goto(addr217);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr264:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr267);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.x);
                                                                                                                              break loop3;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr301);
                                                                                                                              }
                                                                                                                              addr299:
                                                                                                                           }
                                                                                                                           §§goto(addr264);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               §§goto(addr217);
                                                                                                            }
                                                                                                            if(_loc10_ && _loc2_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr298);
                                                                                                               }
                                                                                                               addr297:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               break loop5;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr306);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr257:
                                                                                             }
                                                                                             §§goto(addr299);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr163);
                                                                                    }
                                                                                    addr268:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr269);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§goto(addr274);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr302);
                                                                                 §§goto(addr269);
                                                                              }
                                                                              §§goto(addr274);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr291);
                                                            }
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr268);
                                                   }
                                                   §§goto(addr260);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr274);
                                          }
                                          §§goto(addr239);
                                       }
                                    }
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr306);
                  }
                  else
                  {
                     §§push(_loc6_.x);
                  }
                  §§goto(addr297);
               }
               §§goto(addr305);
            }
            §§goto(addr269);
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §>!D§(param1:Number = 1.0) : b2Shape
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         §§push(this.§6r§);
         if(!_loc10_)
         {
            var _loc7_:* = §§pop();
            if(!_loc10_)
            {
               §§push(§=!i§);
               if(_loc9_)
               {
                  §§push(_loc7_);
                  if(_loc9_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_ || this)
                        {
                           §§push(0);
                           if(_loc10_ && this)
                           {
                              addr211:
                           }
                        }
                        else
                        {
                           addr203:
                           §§push(1);
                           if(!(_loc10_ && _loc2_))
                           {
                              §§goto(addr211);
                           }
                        }
                     }
                     else
                     {
                        §§push(§"d§);
                        if(!(_loc10_ && param1))
                        {
                           addr202:
                           if(§§pop() === _loc7_)
                           {
                              §§goto(addr203);
                           }
                           else
                           {
                              §§push(2);
                           }
                        }
                     }
                     §§goto(addr217);
                  }
               }
               §§goto(addr202);
            }
            §§goto(addr203);
         }
         addr217:
         switch(§§pop())
         {
            case 0:
               _loc2_ = new b2CircleShape();
               if(_loc9_ || _loc3_)
               {
                  §§push(_loc2_);
                  §§push(this.§'O§);
                  if(_loc9_ || this)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§pop().§[!x§(§§pop());
                  if(_loc9_)
                  {
                     return _loc2_;
                  }
               }
            case 1:
               _loc3_ = this.§!M§();
               (_loc4_ = new b2PolygonShape()).§2`§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§ A§();
               if(!(_loc10_ && _loc3_))
               {
                  _loc7_ = 0;
                  if(_loc9_ || this)
                  {
                     for each(_loc6_ in _loc5_)
                     {
                        §§push(_loc6_);
                        §§push(_loc6_.x);
                        if(!(_loc10_ && _loc2_))
                        {
                           §§push(§§pop() * param1);
                        }
                        §§pop().x = §§pop();
                        if(!_loc10_)
                        {
                           §§push(_loc6_);
                           §§push(_loc6_.y);
                           if(_loc9_ || this)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§pop().y = §§pop();
                        }
                     }
                  }
                  if(!_loc10_)
                  {
                     return _loc4_;
                  }
                  break;
               }
         }
         return null;
      }
   }
}
