package §<"B§
{
   import §1!2§.b2DistanceJointDef;
   import §1!2§.b2JointDef;
   import §1!2§.b2PrismaticJointDef;
   import §1!2§.b2RevoluteJointDef;
   import §1!2§.b2WeldJointDef;
   import §7P§.§7B§;
   import §[R§.b2Vec2;
   import flash.geom.Point;
   
   public class §-#'§
   {
      
      public static const §5&§:uint = 1;
      
      public static const §-!=§:uint = 2;
      
      public static const §>"z§:uint = 3;
      
      public static const §,"?§:uint = 4;
      
      public static const §use §:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5&§ = 1;
         }
         loop0:
         while(true)
         {
            §-!=§ = 2;
            loop1:
            do
            {
               §>"z§ = 3;
               while(_loc1_)
               {
                  §,"?§ = 4;
                  do
                  {
                     §use § = 5;
                  }
                  while(_loc2_ && _loc2_);
                  
                  if(!(_loc2_ && §-#'§))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc2_);
            
            return;
         }
      }
      
      private var §;"-§:int;
      
      protected var mId1:int;
      
      protected var mId2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`"A§:Boolean;
      
      private var §9m§:Number;
      
      private var §8!o§:Number;
      
      private var §-<§:Boolean;
      
      private var §3d§:Number;
      
      private var §=p§:Boolean;
      
      private var §#"]§:Boolean;
      
      private var §`"l§:Boolean;
      
      private var §"!R§:Number;
      
      private var §,"J§:Number;
      
      private var §-U§:Number;
      
      private var §^#§:int = 0;
      
      private var §<"'§:Number = 0.0;
      
      private var §+!X§:Number = 0.0;
      
      private var §<"e§:Number;
      
      private var §6l§:Boolean;
      
      private var §'"T§:Number;
      
      public function §-#'§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0, param14:Boolean = false, param15:Number = 0.0, param16:Boolean = false)
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         if(_loc17_ || param3)
         {
            this.mPoint1 = new Point();
            loop0:
            while(true)
            {
               this.mPoint2 = new Point();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     this.§;"-§ = param1;
                     loop3:
                     while(true)
                     {
                        this.mId1 = param2;
                        loop4:
                        while(true)
                        {
                           this.mId2 = param3;
                           loop5:
                           while(true)
                           {
                              this.mPoint1 = param4.clone();
                              addr185:
                              while(true)
                              {
                                 this.mPoint2 = param5.clone();
                                 addr179:
                                 while(true)
                                 {
                                    this.§`"A§ = param7;
                                    addr171:
                                    while(!_loc18_)
                                    {
                                       this.§9m§ = param8;
                                       while(_loc17_)
                                       {
                                       }
                                       continue loop3;
                                       if(!(_loc18_ && this))
                                       {
                                          if(!_loc18_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     addr92:
                     if(_loc18_ && param3)
                     {
                        continue;
                     }
                     this.§'"T§ = param15;
                     while(true)
                     {
                        if(_loc17_ || this)
                        {
                           §§goto(addr62);
                        }
                        addr145:
                        while(_loc17_)
                        {
                           continue loop1;
                        }
                        addr78:
                        §§goto(addr185);
                        this.§#"]§ = param16;
                        if(_loc18_ && param1)
                        {
                           continue;
                        }
                        addr39:
                        if(!(_loc18_ && param1))
                        {
                           if(!_loc18_)
                           {
                              if(_loc17_)
                              {
                                 return;
                              }
                              addr159:
                              while(true)
                              {
                                 this.§-<§ = param10;
                                 §§goto(addr145);
                              }
                           }
                           else
                           {
                              loop16:
                              while(_loc17_ || param1)
                              {
                                 this.§6l§ = param14;
                                 while(true)
                                 {
                                    if(_loc17_ || param2)
                                    {
                                       if(_loc18_)
                                       {
                                          break;
                                       }
                                       §§goto(addr92);
                                    }
                                    else
                                    {
                                       while(!_loc18_)
                                       {
                                          this.§"!R§ = param13;
                                          continue loop16;
                                       }
                                       while(!_loc18_)
                                       {
                                          this.§=p§ = param12;
                                          break loop16;
                                       }
                                       §§goto(addr179);
                                       addr126:
                                       addr138:
                                    }
                                    §§goto(addr39);
                                 }
                                 §§goto(addr164);
                              }
                              while(true)
                              {
                                 this.§`"l§ = param6;
                                 §§goto(addr126);
                                 §§goto(addr114);
                              }
                              addr114:
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr171);
                  }
               }
            }
         }
         while(true)
         {
            this.§8!o§ = param9;
            §§goto(addr159);
         }
      }
      
      public function get type() : int
      {
         return this.§;"-§;
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
      
      public function get §9"r§() : Boolean
      {
         return this.§`"A§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§9m§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§8!o§;
      }
      
      public function get §?"B§() : Boolean
      {
         return this.§-<§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§3d§;
      }
      
      public function get §@[§() : Boolean
      {
         return this.§=p§;
      }
      
      public function get §4C§() : Boolean
      {
         return this.§`"l§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§"!R§;
      }
      
      public function get isBreakable() : Boolean
      {
         return this.§6l§;
      }
      
      public function set isBreakable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6l§ = param1;
         }
      }
      
      public function get minBreakForce() : Number
      {
         return this.§'"T§;
      }
      
      public function set minBreakForce(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'"T§ = param1;
         }
      }
      
      public function get §-"A§() : Boolean
      {
         return this.§#"]§;
      }
      
      public function set §-"A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#"]§ = param1;
         }
      }
      
      public function get axisX() : Number
      {
         return this.§,"J§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§,"J§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§-U§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§-U§ = param1;
         }
      }
      
      public function get annihilationTime() : Number
      {
         return this.§<"e§;
      }
      
      public function set annihilationTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§<"e§ = param1;
         }
      }
      
      public function get coordinateType() : int
      {
         return this.§^#§;
      }
      
      public function set coordinateType(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§^#§ = param1;
         }
      }
      
      public function get dampingRatio() : Number
      {
         return this.§<"'§;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<"'§ = param1;
         }
      }
      
      public function get frequency() : Number
      {
         return this.§+!X§;
      }
      
      public function set frequency(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§+!X§ = param1;
         }
      }
      
      private function §&"n§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:b2DistanceJointDef = new b2DistanceJointDef();
         if(_loc7_)
         {
            _loc3_.collideConnected = this.§`"l§;
            loop0:
            while(true)
            {
               _loc3_.§""u§ = this.§+!X§;
               while(true)
               {
                  _loc3_.dampingRatio = this.§<"'§;
                  loop2:
                  while(_loc7_)
                  {
                     §§push(this.§^#§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.§^#§);
                           loop5:
                           while(true)
                           {
                              §§push(1);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§^#§);
                                       if(!_loc7_)
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       §§push(2);
                                       if(_loc6_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc6_)
                                       {
                                          continue loop4;
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          loop8:
                                          while(_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(_loc3_.§!"4§);
                                             loop9:
                                             for(; !_loc6_; §§push(_loc3_.§!"4§),if(!_loc7_)
                                             {
                                                continue;
                                             },§§pop().y = this.mPoint1.y,§§goto(addr87))
                                             {
                                                §§pop().x = this.mPoint1.x;
                                                loop10:
                                                while(true)
                                                {
                                                   if(_loc6_ && param2)
                                                   {
                                                      throw Error("Coordinate type 1 not supported for distance joints at the moment!");
                                                   }
                                                   addr144:
                                                   if(!(_loc7_ || this))
                                                   {
                                                      break;
                                                   }
                                                   continue loop9;
                                                   addr52:
                                                   if(!(_loc7_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   addr59:
                                                   if(_loc6_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(false)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.§#"B§);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§pop().x = this.mPoint2.x;
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§push(_loc3_.§#"B§);
                                                                  if(!(_loc7_ || this))
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     §§pop().y = this.mPoint2.y;
                                                                     if(!(_loc7_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr52);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr164:
                                                                     if(_loc7_ || this)
                                                                     {
                                                                        §§push(0);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           break loop10;
                                                                        }
                                                                        addr194:
                                                                        §§pop().x = §§pop();
                                                                        §§goto(addr164);
                                                                        §§push(_loc3_.§#"B§);
                                                                        addr195:
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     if(!_loc7_)
                                                                     {
                                                                        break loop4;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  §§push(_loc3_.§#"B§);
                                                                  addr87:
                                                                  addr210:
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                         }
                                                      }
                                                      continue loop8;
                                                   }
                                                   var _loc4_:b2Vec2 = param1.§3!t§().GetWorldPoint(_loc3_.§!"4§);
                                                   var _loc5_:b2Vec2 = param2.§3!t§().GetWorldPoint(_loc3_.§#"B§);
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      _loc3_.length = Math.sqrt((_loc5_.x - _loc4_.x) * (_loc5_.x - _loc4_.x) + (_loc5_.y - _loc4_.y) * (_loc5_.y - _loc4_.y));
                                                      while(true)
                                                      {
                                                         _loc3_.§9"P§ = param1.§3!t§();
                                                         loop16:
                                                         while(_loc7_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc3_.§continue§ = param2.§3!t§();
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop16;
                                                            }
                                                            return _loc3_;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr282);
                                                }
                                                if(_loc7_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr195);
                                             }
                                             if(!_loc6_)
                                             {
                                                §§push(0);
                                                if(!(_loc7_ || param1))
                                                {
                                                   addr219:
                                                   §§pop().x = §§pop();
                                                   break;
                                                }
                                                §§pop().y = §§pop();
                                                §§goto(addr210);
                                             }
                                             §§goto(addr219);
                                             §§push(0);
                                          }
                                          §§goto(addr199);
                                          §§push(_loc3_.§!"4§);
                                       }
                                       §§goto(addr240);
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr144);
                              }
                           }
                        }
                        §§goto(addr199);
                     }
                  }
               }
            }
         }
         §§goto(addr240);
      }
      
      private function §6+§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2WeldJointDef = new b2WeldJointDef();
         if(_loc8_ || param1)
         {
            _loc3_.collideConnected = this.§`"l§;
         }
         var _loc4_:b2Vec2 = param1.§3!t§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y));
         var _loc5_:b2Vec2 = param2.§3!t§().GetWorldPoint(new b2Vec2(this.mPoint2.x,this.mPoint2.y));
         §§push(§§findproperty(b2Vec2));
         §§push(_loc5_.x);
         if(!_loc7_)
         {
            §§push(_loc4_.x);
            if(!(_loc7_ && param2))
            {
               §§push(§§pop() + §§pop());
               if(!_loc7_)
               {
                  addr85:
                  §§push(0.5);
                  if(_loc8_ || _loc3_)
                  {
                     §§goto(addr94);
                  }
                  §§goto(addr98);
               }
               addr94:
               §§push(§§pop() * §§pop());
               §§push(_loc5_.y);
               if(_loc8_)
               {
                  addr98:
                  §§push(_loc4_.y);
                  if(!(_loc7_ && param1))
                  {
                     §§goto(addr112);
                  }
                  §§push(§§pop() * §§pop());
               }
               addr112:
               §§push(§§pop() + §§pop());
               if(!_loc7_)
               {
                  addr110:
                  §§push(0.5);
               }
               var _loc6_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               if(_loc8_ || this)
               {
                  _loc3_.§8#5§(param1.§3!t§(),param2.§3!t§(),_loc6_);
               }
               return _loc3_;
            }
            §§goto(addr110);
         }
         §§goto(addr85);
      }
      
      private function §,o§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2RevoluteJointDef = new b2RevoluteJointDef();
         if(!_loc4_)
         {
            _loc3_.collideConnected = this.§`"l§;
         }
         while(true)
         {
            _loc3_.§8#5§(param1.§3!t§(),param2.§3!t§(),param1.§3!t§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
            loop1:
            while(true)
            {
               _loc3_.§#d§ = this.§`"A§;
               addr103:
               while(true)
               {
                  _loc3_.§!#G§ = this.§-<§;
                  continue loop1;
               }
            }
            if(!(_loc5_ || param2))
            {
               continue;
            }
            _loc3_.motorSpeed = this.§3d§;
            §§goto(addr77);
         }
      }
      
      private function §#"C§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PrismaticJointDef = new b2PrismaticJointDef();
         if(!_loc5_)
         {
            _loc3_.collideConnected = this.§`"l§;
            while(true)
            {
               _loc3_.§8#5§(param1.§3!t§(),param2.§3!t§(),param1.§3!t§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)),new b2Vec2(this.§,"J§,this.§-U§));
               loop1:
               while(!_loc5_)
               {
                  _loc3_.§#d§ = this.§`"A§;
                  loop2:
                  while(true)
                  {
                     _loc3_.§2!@§ = this.§9m§;
                     loop3:
                     while(true)
                     {
                        _loc3_.§5!F§ = this.§8!o§;
                        loop4:
                        while(_loc4_)
                        {
                           _loc3_.§!#G§ = this.§-<§;
                           while(_loc4_)
                           {
                              _loc3_.§0A§ = this.§"!R§;
                              loop6:
                              while(_loc4_)
                              {
                                 continue loop3;
                                 while(true)
                                 {
                                    _loc3_.motorSpeed = this.§3d§;
                                    if(_loc4_)
                                    {
                                       if(_loc5_ && param1)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr42);
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 return _loc3_;
                              }
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §!!0§(param1:§7B§, param2:§7B§) : b2JointDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§;"-§);
         if(_loc4_)
         {
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc3_)
            {
               §§push(§5&§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && param2))
                        {
                           §§push(0);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr194:
                              switch(§§pop())
                              {
                                 case 0:
                                    return this.§&"n§(param1,param2);
                                 case 1:
                                    return this.§6+§(param1,param2);
                                 case 2:
                                    return this.§,o§(param1,param2);
                                 case 3:
                                    return this.§#"C§(param1,param2);
                                 default:
                                    return null;
                              }
                              addr194:
                           }
                        }
                        else
                        {
                           addr146:
                           §§push(1);
                           if(!_loc4_)
                           {
                              addr167:
                           }
                        }
                        §§goto(addr194);
                     }
                     else
                     {
                        §§push(§-!=§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(_loc3_);
                           if(!(_loc5_ && this))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr146);
                                 }
                                 §§goto(addr194);
                              }
                              else
                              {
                                 §§push(§>"z§);
                                 if(_loc4_)
                                 {
                                    addr153:
                                    §§push(_loc3_);
                                    if(!(_loc5_ && param1))
                                    {
                                       addr161:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(2);
                                             if(_loc4_)
                                             {
                                                §§goto(addr167);
                                             }
                                             else
                                             {
                                                addr189:
                                                §§goto(addr194);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr170:
                                          if(§,"?§ !== _loc3_)
                                          {
                                             §§goto(addr194);
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr194);
                                    }
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr170);
                     }
                  }
                  §§goto(addr170);
               }
               §§goto(addr153);
            }
            §§goto(addr146);
         }
         §§goto(addr194);
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Object = new Object();
         if(_loc2_)
         {
            _loc1_.x1 = this.point1.x;
            while(true)
            {
               _loc1_.y1 = this.point1.y;
               addr327:
               while(true)
               {
                  _loc1_.x2 = this.point2.x;
                  addr310:
                  loop2:
                  while(true)
                  {
                     _loc1_.y2 = this.point2.y;
                     addr303:
                     while(true)
                     {
                        _loc1_.motorSpeed = this.motorSpeed;
                        addr294:
                        while(_loc2_)
                        {
                           _loc1_.limit = this.§9"r§;
                        }
                        continue loop2;
                     }
                  }
               }
               addr224:
               if(_loc3_ && this)
               {
                  continue;
               }
               _loc1_.index2 = this.id2;
               loop14:
               while(true)
               {
                  _loc1_.oneWayDestroyed = this.§-"A§;
                  loop15:
                  while(true)
                  {
                     _loc1_.coordinateType = this.coordinateType;
                     loop16:
                     for(; _loc2_; if(_loc3_ && _loc1_)
                     {
                        continue;
                     },if(_loc2_)
                     {
                        _loc1_.minBreakForce = this.minBreakForce;
                        §§goto(addr125);
                     },§§goto(addr303))
                     {
                        _loc1_.dampingRatio = this.dampingRatio;
                        loop17:
                        while(true)
                        {
                           _loc1_.frequency = this.frequency;
                           loop18:
                           while(true)
                           {
                              _loc1_.isBreakable = this.isBreakable;
                              loop19:
                              while(true)
                              {
                                 if(!isNaN(this.annihilationTime))
                                 {
                                    continue loop14;
                                 }
                                 addr99:
                                 while(true)
                                 {
                                    if(!isNaN(this.minBreakForce))
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          continue loop16;
                                       }
                                       addr125:
                                       loop23:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop14;
                                          }
                                          addr84:
                                          loop26:
                                          while(true)
                                          {
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr91:
                                                if(_loc3_ && _loc2_)
                                                {
                                                   break;
                                                   addr28:
                                                }
                                                while(true)
                                                {
                                                   if(!isNaN(this.axisY))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr36:
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop19;
                                                      }
                                                      addr54:
                                                      if(!_loc2_)
                                                      {
                                                         continue loop26;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         break loop23;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr294);
                                                      }
                                                   }
                                                   return _loc1_;
                                                }
                                                continue loop15;
                                             }
                                             continue loop23;
                                          }
                                          addr264:
                                          loop13:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                addr217:
                                                if(_loc3_ && this)
                                                {
                                                   break;
                                                }
                                                §§goto(addr224);
                                             }
                                             addr237:
                                             while(true)
                                             {
                                                _loc1_.index1 = this.id1;
                                                continue loop13;
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc1_.collideConnected = this.§4C§;
                                             addr251:
                                             addr288:
                                             while(!(_loc3_ && this))
                                             {
                                                _loc1_.lowerLimit = this.lowerLimit;
                                                while(!_loc3_)
                                                {
                                                   _loc1_.upperLimit = this.upperLimit;
                                                   §§goto(addr237);
                                                }
                                                while(true)
                                                {
                                                   _loc1_.motor = this.§?"B§;
                                                   break loop16;
                                                }
                                             }
                                             while(true)
                                             {
                                                _loc1_.maxTorque = this.maxTorque;
                                                §§goto(addr282);
                                                §§goto(addr251);
                                             }
                                             §§goto(addr217);
                                          }
                                       }
                                       continue loop18;
                                    }
                                    while(true)
                                    {
                                       if(!isNaN(this.axisX))
                                       {
                                          continue loop19;
                                       }
                                       §§goto(addr28);
                                    }
                                 }
                                 continue loop16;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        _loc1_.type = this.type;
                        §§goto(addr270);
                     }
                  }
               }
            }
         }
         §§goto(addr288);
      }
   }
}
