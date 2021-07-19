package §@w§
{
   import §9t§.b2Vec2;
   import §]">§.§<!=§;
   import §`X§.b2DistanceJointDef;
   import §`X§.b2JointDef;
   import §`X§.b2PrismaticJointDef;
   import §`X§.b2RevoluteJointDef;
   import §`X§.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §1o§
   {
      
      public static const §[&§:uint = 1;
      
      public static const § !z§:uint = 2;
      
      public static const §4<§:uint = 3;
      
      public static const §="'§:uint = 4;
      
      public static const §`!T§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §[&§ = 1;
            while(true)
            {
               § !z§ = 2;
            }
            addr90:
         }
         loop1:
         while(true)
         {
            §4<§ = 3;
            while(true)
            {
               §="'§ = 4;
               continue loop1;
               addr35:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  break loop1;
               }
               §§goto(addr90);
            }
         }
      }
      
      private var §!k§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §<2§:Boolean;
      
      private var §""2§:Number;
      
      private var §,r§:Number;
      
      private var §>p§:Boolean;
      
      private var § $§:Number;
      
      private var §'"§:Boolean;
      
      private var §1n§:Boolean;
      
      private var §5s§:Number;
      
      private var §?!L§:Number;
      
      private var §!!S§:Number;
      
      private var §>!P§:int = 0;
      
      private var §"k§:Number = 0.0;
      
      private var §"!Z§:Number = 0.0;
      
      private var §?!0§:Number;
      
      public function §1o§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            this.mPoint1 = new Point();
            while(true)
            {
               this.mPoint2 = new Point();
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§!k§ = param1;
                     loop3:
                     while(true)
                     {
                        this.mId1 = param2;
                        loop4:
                        while(true)
                        {
                           this.mId2 = param3;
                           addr149:
                           addr70:
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              addr144:
                              while(true)
                              {
                                 this.mPoint2 = param5.clone();
                                 continue loop3;
                              }
                           }
                           if(_loc14_ || param2)
                           {
                              if(_loc14_)
                              {
                                 this.§1n§ = param6;
                                 while(true)
                                 {
                                    if(_loc14_ || this)
                                    {
                                       if(!_loc15_)
                                       {
                                          if(_loc15_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       addr120:
                                       addr120:
                                       while(true)
                                       {
                                          this.§,r§ = param9;
                                          loop10:
                                          while(true)
                                          {
                                             this.§>p§ = param10;
                                             loop11:
                                             while(true)
                                             {
                                                if(!(_loc15_ && this))
                                                {
                                                   if(_loc14_)
                                                   {
                                                      if(_loc14_)
                                                      {
                                                         this.§ $§ = param11;
                                                         loop12:
                                                         while(true)
                                                         {
                                                            this.§'"§ = param12;
                                                            addr61:
                                                            while(true)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               continue loop12;
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr149);
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop10;
                                             }
                                             §§goto(addr144);
                                          }
                                       }
                                    }
                                    §§goto(addr61);
                                 }
                                 continue loop3;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function get type() : int
      {
         return this.§!k§;
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
      
      public function get §8D§() : Boolean
      {
         return this.§<2§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§""2§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§,r§;
      }
      
      public function get §2"+§() : Boolean
      {
         return this.§>p§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ $§;
      }
      
      public function get §'=§() : Boolean
      {
         return this.§'"§;
      }
      
      public function get §=4§() : Boolean
      {
         return this.§1n§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§5s§;
      }
      
      public function get axisX() : Number
      {
         return this.§?!L§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§?!L§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§!!S§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§!!S§ = param1;
         }
      }
      
      public function get §%?§() : Number
      {
         return this.§?!0§;
      }
      
      public function set §%?§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§?!0§ = param1;
         }
      }
      
      public function get §!S§() : int
      {
         return this.§>!P§;
      }
      
      public function set §!S§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§>!P§ = param1;
         }
      }
      
      public function get dampingRatio() : Number
      {
         return this.§"k§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"k§ = param1;
         }
      }
      
      public function get frequency() : Number
      {
         return this.§"!Z§;
      }
      
      public function set frequency(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!Z§ = param1;
         }
      }
      
      private function §?]§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         if(_loc7_ || param1)
         {
            _loc3_.collideConnected = this.§1n§;
            loop0:
            while(true)
            {
               _loc3_.§^J§ = this.§"!Z§;
               loop1:
               while(true)
               {
                  _loc3_.dampingRatio = this.§"k§;
                  loop2:
                  while(true)
                  {
                     §§push(this.§>!P§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.§>!P§);
                              loop5:
                              while(true)
                              {
                                 §§push(1);
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc7_ || this))
                                          {
                                             addr218:
                                             §§push(_loc3_.§!8§);
                                             break;
                                          }
                                       }
                                       addr221:
                                       §§pop().x = 0;
                                       §§push(_loc3_.§!8§);
                                       §§push(0);
                                       if(_loc6_)
                                       {
                                          §§goto(addr221);
                                       }
                                       §§pop().y = §§pop();
                                       continue loop1;
                                       addr220:
                                       addr222:
                                       addr167:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§>!P§);
                                       if(_loc6_)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       §§push(2);
                                       if(!_loc7_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc6_ && param2)
                                       {
                                          continue loop4;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          loop9:
                                          while(_loc7_)
                                          {
                                             §§push(_loc3_.§!8§);
                                             for(; _loc7_; loop11:
                                             while(true)
                                             {
                                                §§push(_loc3_.§!8§);
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                §§pop().y = this.mPoint1.y;
                                                while(true)
                                                {
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(!_loc7_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§@W§);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§pop().x = this.mPoint2.x;
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(_loc3_.§@W§);
                                                                  if(_loc6_ && this)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        §§pop().y = this.mPoint2.y;
                                                                        if(!(_loc7_ || param1))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                           }
                                                                           addr73:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr182:
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr190:
                                                                              if(!(_loc7_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr178:
                                                                              §§push(_loc3_.§@W§);
                                                                              §§push(0);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 §§goto(addr182);
                                                                              }
                                                                              addr189:
                                                                              §§pop().x = §§pop();
                                                                              §§goto(addr190);
                                                                           }
                                                                        }
                                                                        var _loc4_:b2Vec2 = param1.§^!z§().GetWorldPoint(_loc3_.§!8§);
                                                                        var _loc5_:b2Vec2 = param2.§^!z§().GetWorldPoint(_loc3_.§@W§);
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
                                                                           while(true)
                                                                           {
                                                                              _loc3_.§+,§ = param1.§^!z§();
                                                                              loop18:
                                                                              while(_loc7_ || param2)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_.§"R§ = param2.§^!z§();
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                                 return _loc3_;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr282);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr188:
                                                                        §§push(0);
                                                                     }
                                                                     §§goto(addr189);
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr222);
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr221);
                                             })
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§pop().x = this.mPoint1.x;
                                                   continue;
                                                }
                                                §§goto(addr220);
                                             }
                                             §§goto(addr221);
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr240);
                                    }
                                    continue loop3;
                                 }
                                 throw Error("Coordinate type 1 not supported for distance joints at the moment!");
                              }
                           }
                           §§goto(addr218);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §4!s§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         if(!(_loc7_ && _loc3_))
         {
            _loc3_.collideConnected = this.§1n§;
         }
         var _loc4_:b2Vec2 = param1.§^!z§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§^!z§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         §§push(§§findproperty(b2Vec2));
         §§push(_loc5_.x);
         if(!_loc7_)
         {
            §§push(_loc4_.x);
            if(!_loc7_)
            {
               §§push(§§pop() + §§pop());
               if(_loc8_ || param2)
               {
                  §§goto(addr85);
               }
               §§goto(addr89);
            }
            §§goto(addr100);
         }
         addr85:
         §§push(0.5);
         if(!_loc7_)
         {
            addr89:
            §§push(§§pop() * §§pop());
            §§push(_loc5_.y);
            if(!_loc7_)
            {
               §§push(_loc4_.y);
               if(!_loc7_)
               {
                  §§goto(addr102);
               }
               §§push(§§pop() * §§pop());
            }
            §§goto(addr100);
         }
         addr102:
         §§push(§§pop() + §§pop());
         if(!_loc7_)
         {
            addr100:
            §§push(0.5);
         }
         var _loc6_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
         if(!_loc7_)
         {
            _loc3_.§>`§(param1.§^!z§(),param2.§^!z§(),_loc6_);
         }
         return _loc3_;
      }
      
      private function §5!g§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         if(_loc5_ || param1)
         {
            _loc3_.collideConnected = this.§1n§;
         }
         while(true)
         {
            _loc3_.§>`§(param1.§^!z§(),param2.§^!z§(),param1.§^!z§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
            loop1:
            while(!(_loc4_ && param2))
            {
               _loc3_.§+"!§ = this.§<2§;
               loop2:
               while(true)
               {
                  _loc3_.§+!b§ = this.§>p§;
                  loop3:
                  while(true)
                  {
                     _loc3_.motorSpeed = this.§ $§;
                     loop4:
                     while(_loc5_)
                     {
                        _loc3_.§ !n§ = this.§,r§;
                        loop5:
                        while(_loc5_)
                        {
                           _loc3_.§'!P§ = this.§""2§;
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop2;
                              }
                              continue loop5;
                              addr78:
                              _loc3_.§?u§ = this.§5s§;
                              if(!(_loc4_ && param1))
                              {
                                 if(_loc5_ || param1)
                                 {
                                    return _loc3_;
                                 }
                                 continue loop4;
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §7,§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         if(!(_loc4_ && this))
         {
            _loc3_.collideConnected = this.§1n§;
            loop0:
            while(true)
            {
               _loc3_.§>`§(param1.§^!z§(),param2.§^!z§(),param1.§^!z§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§?!L§,this.§!!S§));
               loop1:
               while(true)
               {
                  _loc3_.§+"!§ = this.§<2§;
                  while(!_loc4_)
                  {
                     _loc3_.§-!L§ = this.§""2§;
                     continue loop1;
                     if(_loc5_ || this)
                     {
                        return _loc3_;
                        addr60:
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §;"<§(param1:§<!=§, param2:§<!=§) : b2JointDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§!k§);
         if(!(_loc4_ && param2))
         {
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               §§push(§[&§);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc4_)
                        {
                           §§push(0);
                           if(_loc4_ && this)
                           {
                              addr148:
                           }
                        }
                        else
                        {
                           addr152:
                           §§push(3);
                           if(_loc4_ && _loc3_)
                           {
                           }
                        }
                        addr175:
                        switch(§§pop())
                        {
                           case 0:
                              return this.§?]§(param1,param2);
                           case 1:
                              return this.§4!s§(param1,param2);
                           case 2:
                              return this.§5!g§(param1,param2);
                           case 3:
                              return this.§7,§(param1,param2);
                           default:
                              return null;
                        }
                        addr175:
                     }
                     else
                     {
                        §§push(§ !z§);
                        if(_loc5_ || param2)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc4_ && param2))
                                 {
                                    §§push(1);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr148);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr152);
                                 }
                              }
                              else
                              {
                                 §§push(§4<§);
                                 if(_loc4_)
                                 {
                                 }
                                 addr151:
                                 if(§§pop() === _loc3_)
                                 {
                                    §§goto(addr152);
                                 }
                                 else
                                 {
                                    §§push(4);
                                 }
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr151);
                        }
                        §§push(_loc3_);
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!_loc4_)
                              {
                                 addr145:
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    §§goto(addr148);
                                 }
                              }
                              else
                              {
                                 §§goto(addr152);
                              }
                              §§goto(addr175);
                           }
                           else
                           {
                              §§goto(addr151);
                              §§push(§="'§);
                           }
                        }
                        §§goto(addr151);
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr151);
            }
            §§goto(addr145);
         }
         §§goto(addr175);
      }
   }
}
