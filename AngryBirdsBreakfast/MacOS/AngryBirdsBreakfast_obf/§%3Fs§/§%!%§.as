package §?s§
{
   import §+C§.b2DistanceJointDef;
   import §+C§.b2JointDef;
   import §+C§.b2PrismaticJointDef;
   import §+C§.b2RevoluteJointDef;
   import §+C§.b2WeldJointDef;
   import §,z§.§<!r§;
   import §6Z§.b2Vec2;
   import flash.geom.Point;
   
   public class §%!%§
   {
      
      public static const §<!C§:uint = 1;
      
      public static const §9"§:uint = 2;
      
      public static const §!!C§:uint = 3;
      
      public static const §^§:uint = 4;
      
      public static const §`!b§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §%!%§))
         {
            §<!C§ = 1;
            while(true)
            {
               §9"§ = 2;
               addr83:
               while(!_loc2_)
               {
                  §!!C§ = 3;
               }
            }
         }
         loop2:
         while(true)
         {
            §^§ = 4;
            while(!(_loc2_ && §%!%§))
            {
               §`!b§ = 5;
               if(_loc2_ && §%!%§)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop2;
               }
               §§goto(addr83);
            }
         }
      }
      
      private var §^"'§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §%!0§:Boolean;
      
      private var §#v§:Number;
      
      private var §+!&§:Number;
      
      private var §<!z§:Boolean;
      
      private var §6!g§:Number;
      
      private var §^!"§:Boolean;
      
      private var §^g§:Boolean;
      
      private var §`!$§:Boolean;
      
      private var §@!=§:Number;
      
      private var §7!<§:Number;
      
      private var §+!O§:Number;
      
      private var §@!U§:int = 0;
      
      private var §4!I§:Number = 0.0;
      
      private var §;!O§:Number = 0.0;
      
      private var §"" §:Number;
      
      private var §-!G§:Boolean;
      
      private var §4!"§:Number;
      
      public function §%!%§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         if(!_loc18_)
         {
            this.mPoint1 = new Point();
            while(true)
            {
               this.mPoint2 = new Point();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§^"'§ = param1;
                     while(true)
                     {
                        this.mId1 = param2;
                        while(_loc17_)
                        {
                           this.mId2 = param3;
                           loop5:
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              addr173:
                              while(true)
                              {
                                 this.mPoint2 = param5.clone();
                                 while(true)
                                 {
                                    this.§%!0§ = param7;
                                    addr112:
                                    while(_loc17_ || param2)
                                    {
                                       continue loop5;
                                    }
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
         while(true)
         {
            this.§#v§ = param8;
            §§goto(addr152);
         }
      }
      
      public function get type() : int
      {
         return this.§^"'§;
      }
      
      public function get id1() : int
      {
         return this.mId1;
      }
      
      public function get id2() : int
      {
         return this.mId2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get § ]§() : Boolean
      {
         return this.§%!0§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§#v§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§+!&§;
      }
      
      public function get §'"&§() : Boolean
      {
         return this.§<!z§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§6!g§;
      }
      
      public function get §=!f§() : Boolean
      {
         return this.§^!"§;
      }
      
      public function get §2!&§() : Boolean
      {
         return this.§`!$§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§@!=§;
      }
      
      public function get §&!5§() : Boolean
      {
         return this.§-!G§;
      }
      
      public function set §&!5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-!G§ = param1;
         }
      }
      
      public function get §"!d§() : Number
      {
         return this.§4!"§;
      }
      
      public function set §"!d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§4!"§ = param1;
         }
      }
      
      public function get §!e§() : Boolean
      {
         return this.§^g§;
      }
      
      public function set §!e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§^g§ = param1;
         }
      }
      
      public function get axisX() : Number
      {
         return this.§7!<§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!<§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§+!O§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!O§ = param1;
         }
      }
      
      public function get §03§() : Number
      {
         return this.§"" §;
      }
      
      public function set §03§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"" § = param1;
         }
      }
      
      public function get § U§() : int
      {
         return this.§@!U§;
      }
      
      public function set § U§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!U§ = param1;
         }
      }
      
      public function get §,8§() : Number
      {
         return this.§4!I§;
      }
      
      public function set §,8§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4!I§ = param1;
         }
      }
      
      public function get §^!_§() : Number
      {
         return this.§;!O§;
      }
      
      public function set §^!_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!O§ = param1;
         }
      }
      
      private function § !d§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         if(_loc6_ || param1)
         {
            _loc3_.collideConnected = this.§`!$§;
            while(true)
            {
               _loc3_.§;l§ = this.§;!O§;
               addr253:
               while(true)
               {
                  _loc3_.§,8§ = this.§4!I§;
                  addr247:
                  while(true)
                  {
                     §§push(this.§@!U§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        addr236:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              addr237:
                              addr239:
                              §§push(_loc3_.§0O§);
                              §§push(0);
                              do
                              {
                                 §§pop().x = §§pop();
                                 §§push(_loc3_.§0O§);
                                 §§push(0);
                              }
                              while(_loc7_);
                              
                              §§pop().y = §§pop();
                              while(true)
                              {
                                 addr219:
                                 §§push(_loc3_.§ @§);
                                 §§push(0);
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    addr221:
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(_loc3_.§ @§);
                                    §§push(0);
                                    if(_loc7_)
                                    {
                                       continue;
                                    }
                                    §§pop().y = §§pop();
                                 }
                              }
                              addr231:
                           }
                           else
                           {
                              §§push(this.§@!U§);
                              loop5:
                              while(true)
                              {
                                 §§push(1);
                                 addr195:
                                 while(true)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       addr196:
                                       if(_loc6_ || _loc3_)
                                       {
                                          throw Error("Coordinate type 1 not supported for distance joints at the moment!");
                                       }
                                       §§goto(addr221);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§@!U§);
                                          if(!_loc7_)
                                          {
                                             continue loop3;
                                          }
                                          continue loop5;
                                       }
                                       addr123:
                                    }
                                 }
                              }
                           }
                           addr259:
                           var _loc4_:b2Vec2 = param1.§^`§().GetWorldPoint(_loc3_.§0O§);
                           var _loc5_:b2Vec2 = param2.§^`§().GetWorldPoint(_loc3_.§ @§);
                           if(_loc6_)
                           {
                              _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
                              while(true)
                              {
                                 _loc3_.§'!n§ = param1.§^`§();
                                 loop19:
                                 while(!(_loc7_ && param1))
                                 {
                                    while(true)
                                    {
                                       _loc3_.§ 5§ = param2.§^`§();
                                       if(_loc6_ || _loc3_)
                                       {
                                          break;
                                       }
                                       continue loop19;
                                    }
                                    return _loc3_;
                                 }
                              }
                           }
                           §§goto(addr306);
                        }
                     }
                  }
               }
               if(_loc7_ && _loc3_)
               {
                  continue;
               }
               §§push(_loc3_.§0O§);
               loop9:
               while(true)
               {
                  §§pop().x = this.mPoint1.x;
                  loop10:
                  while(true)
                  {
                     §§push(_loc3_.§0O§);
                     if(_loc6_ || _loc3_)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || param2)
                           {
                              §§pop().y = this.mPoint1.y;
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                    addr69:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc3_.§ @§);
                                    loop13:
                                    while(!(_loc7_ && param2))
                                    {
                                       §§pop().x = this.mPoint2.x;
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(!(_loc7_ && param1))
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(_loc3_.§ @§);
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr253);
                                                   }
                                                }
                                                §§goto(addr247);
                                             }
                                             break loop9;
                                          }
                                          continue loop10;
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr211);
                                 }
                                 if(_loc7_ && this)
                                 {
                                    continue;
                                 }
                                 if(!_loc7_)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr69);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr239);
                        }
                        break;
                     }
                     continue loop9;
                  }
                  §§goto(addr241);
               }
               §§goto(addr196);
            }
         }
         §§goto(addr237);
      }
      
      private function §6W§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         if(_loc7_)
         {
            _loc3_.collideConnected = this.§`!$§;
         }
         var _loc4_:b2Vec2 = param1.§^`§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§^`§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         §§push(§§findproperty(b2Vec2));
         §§push(_loc5_.x);
         if(_loc7_)
         {
            §§push(_loc4_.x);
            if(!(_loc8_ && _loc3_))
            {
               §§push(§§pop() + §§pop());
               if(!(_loc8_ && param1))
               {
                  addr84:
                  §§push(0.5);
                  if(!(_loc8_ && param2))
                  {
                     addr93:
                     §§push(§§pop() * §§pop());
                     §§push(_loc5_.y);
                     if(!_loc8_)
                     {
                        addr97:
                        §§push(_loc4_.y);
                        if(_loc7_ || param2)
                        {
                           §§goto(addr111);
                        }
                        addr111:
                        §§push(§§pop() + §§pop());
                        if(!_loc8_)
                        {
                           addr109:
                           §§push(0.5);
                        }
                        var _loc6_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                        if(!_loc8_)
                        {
                           _loc3_.§",§(param1.§^`§(),param2.§^`§(),_loc6_);
                        }
                        return _loc3_;
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr97);
               }
               §§goto(addr93);
            }
            §§goto(addr111);
         }
         §§goto(addr84);
      }
      
      private function §-h§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         if(_loc4_ || _loc3_)
         {
            _loc3_.collideConnected = this.§`!$§;
            while(true)
            {
               _loc3_.§",§(param1.§^`§(),param2.§^`§(),param1.§^`§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
            }
            addr136:
         }
         while(true)
         {
            _loc3_.§+!<§ = this.§%!0§;
            loop2:
            while(true)
            {
               _loc3_.§[!W§ = this.§<!z§;
               addr96:
               while(true)
               {
                  _loc3_.motorSpeed = this.§6!g§;
                  continue loop2;
               }
            }
         }
      }
      
      private function § !b§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.collideConnected = this.§`!$§;
            loop0:
            while(true)
            {
               _loc3_.§",§(param1.§^`§(),param2.§^`§(),param1.§^`§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§7!<§,this.§+!O§));
               loop1:
               while(true)
               {
                  _loc3_.§+!<§ = this.§%!0§;
                  while(true)
                  {
                     _loc3_.§9"'§ = this.§#v§;
                     loop3:
                     while(_loc5_ || param2)
                     {
                        _loc3_.§<"%§ = this.§+!&§;
                        while(!_loc4_)
                        {
                           _loc3_.§[!W§ = this.§<!z§;
                           loop5:
                           while(!(_loc4_ && _loc3_))
                           {
                              continue loop0;
                              while(true)
                              {
                                 _loc3_.motorSpeed = this.§6!g§;
                                 if(_loc5_)
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       if(!(_loc5_ || param1))
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr55);
                                       continue loop3;
                                    }
                                    continue loop5;
                                 }
                              }
                              return _loc3_;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §0^§(param1:§<!r§, param2:§<!r§) : b2JointDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§^"'§);
         if(!_loc5_)
         {
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param2))
            {
               §§push(§<!C§);
               if(_loc4_ || _loc3_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc4_ || param1)
                        {
                           §§push(0);
                           if(_loc5_ && param1)
                           {
                           }
                        }
                        else
                        {
                           addr161:
                           §§push(3);
                           if(_loc4_ || param1)
                           {
                              addr179:
                           }
                        }
                        addr184:
                        switch(§§pop())
                        {
                           case 0:
                              return this.§ !d§(param1,param2);
                           case 1:
                              return this.§6W§(param1,param2);
                           case 2:
                              return this.§-h§(param1,param2);
                           case 3:
                              return this.§ !b§(param1,param2);
                           default:
                              return null;
                        }
                        addr184:
                     }
                     else
                     {
                        §§push(§9"§);
                        if(!_loc5_)
                        {
                           addr120:
                           §§push(_loc3_);
                           if(_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr126:
                                    §§push(1);
                                    if(_loc4_ || this)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr149:
                                    §§push(2);
                                    if(!(_loc4_ || param2))
                                    {
                                       §§goto(addr179);
                                    }
                                 }
                                 §§goto(addr184);
                              }
                              else
                              {
                                 §§push(§!!C§);
                                 if(_loc4_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc4_)
                                    {
                                       addr141:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc5_ && param1))
                                          {
                                             §§goto(addr149);
                                          }
                                          else
                                          {
                                             §§goto(addr161);
                                          }
                                       }
                                       else
                                       {
                                          addr160:
                                          if(§^§ === _loc3_)
                                          {
                                             §§goto(addr161);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr161);
                                    }
                                 }
                                 §§goto(addr160);
                              }
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr160);
               }
               §§goto(addr120);
            }
            §§goto(addr126);
         }
         §§goto(addr184);
      }
   }
}
