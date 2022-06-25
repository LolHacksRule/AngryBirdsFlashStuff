package §'!E§
{
   import §!+§.§>G§;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §9!§
   {
      
      public static const §;j§:uint = 1;
      
      public static const §83§:uint = 2;
      
      public static const §#S§:uint = 3;
      
      public static const §8J§:uint = 4;
      
      public static const §3=§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;j§ = 1;
            if(!(_loc2_ && _loc1_))
            {
               §83§ = 2;
               if(!(_loc2_ && _loc1_))
               {
                  §#S§ = 3;
                  if(!_loc2_)
                  {
                     §8J§ = 4;
                     if(_loc1_)
                     {
                        addr68:
                        §3=§ = 5;
                     }
                  }
                  §§goto(addr68);
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      private var §1i§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §%1§:Boolean;
      
      private var §=!!§:Number;
      
      private var §+e§:Number;
      
      private var § u§:Boolean;
      
      private var §^x§:Number;
      
      private var §,F§:Boolean;
      
      private var §8A§:Boolean;
      
      private var §@X§:Number;
      
      private var §?9§:Number;
      
      private var §[q§:Number;
      
      private var §<E§:Number;
      
      public function §9!§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            this.mPoint1 = new Point();
            this.mPoint2 = new Point();
            if(_loc15_)
            {
               super();
               this.§1i§ = param1;
               if(!_loc14_)
               {
                  this.mIndex1 = param2;
                  if(!_loc14_)
                  {
                     addr41:
                     this.mIndex2 = param3;
                     if(_loc15_)
                     {
                        this.mPoint1 = param4.clone();
                        this.mPoint2 = param5.clone();
                        this.§%1§ = param7;
                        addr67:
                        this.§=!!§ = param8;
                        if(!(_loc14_ && param1))
                        {
                           §§goto(addr77);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr122);
                  }
               }
               addr77:
               this.§+e§ = param9;
               if(!(_loc14_ && param1))
               {
                  this.§ u§ = param10;
                  if(!_loc14_)
                  {
                     addr102:
                     this.§^x§ = param11;
                     if(!(_loc14_ && param2))
                     {
                        this.§,F§ = param12;
                        if(!(_loc14_ && param3))
                        {
                           addr122:
                           this.§8A§ = param6;
                        }
                     }
                  }
                  this.§@X§ = param13;
               }
               return;
            }
            §§goto(addr67);
         }
         §§goto(addr41);
      }
      
      public function get type() : int
      {
         return this.§1i§;
      }
      
      public function get index1() : int
      {
         return this.mIndex1;
      }
      
      public function get index2() : int
      {
         return this.mIndex2;
      }
      
      public function get point1() : Point
      {
         return this.mPoint1.clone();
      }
      
      public function get point2() : Point
      {
         return this.mPoint2.clone();
      }
      
      public function get §true§() : Boolean
      {
         return this.§%1§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§=!!§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§+e§;
      }
      
      public function get §<d§() : Boolean
      {
         return this.§ u§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§^x§;
      }
      
      public function get §0Z§() : Boolean
      {
         return this.§,F§;
      }
      
      public function get §5!?§() : Boolean
      {
         return this.§8A§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§@X§;
      }
      
      public function get axisX() : Number
      {
         return this.§?9§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§?9§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§[q§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§[q§ = param1;
         }
      }
      
      public function get §=w§() : Number
      {
         return this.§<E§;
      }
      
      public function set §=w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<E§ = param1;
         }
      }
      
      public function § !=§(param1:§>G§, param2:§>G§) : b2JointDef
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§1i§);
         if(!_loc9_)
         {
            var _loc7_:* = §§pop();
            if(_loc8_)
            {
               §§push(§;j§);
               if(!(_loc9_ && this))
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && this))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc9_ && param2))
                        {
                           addr305:
                           §§push(0);
                           if(_loc9_ && param2)
                           {
                              addr391:
                           }
                        }
                        else
                        {
                           addr333:
                           §§push(1);
                           if(!(_loc8_ || this))
                           {
                              addr379:
                           }
                        }
                     }
                     else
                     {
                        §§push(§83§);
                        if(!(_loc9_ && this))
                        {
                           §§push(_loc7_);
                           if(_loc8_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc9_ && param2))
                                 {
                                    §§goto(addr333);
                                 }
                                 else
                                 {
                                    addr371:
                                    §§push(2);
                                    if(_loc8_ || param1)
                                    {
                                       §§goto(addr379);
                                    }
                                    addr397:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          _loc3_ = new b2DistanceJointDef();
                                          if(!(_loc9_ && this))
                                          {
                                             _loc3_.collideConnected = this.§8A§;
                                             if(!_loc9_)
                                             {
                                                _loc3_.frequencyHz = 4;
                                                _loc3_.dampingRatio = 0.5;
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   addr60:
                                                   _loc3_.length = §7!,§.§1-§(param1,param2);
                                                   addr66:
                                                   _loc3_.Initialize(param1.§`t§(),param2.§`t§(),param1.§`t§().GetPosition(),param2.§`t§().GetPosition());
                                                }
                                                return _loc3_;
                                             }
                                             §§goto(addr66);
                                          }
                                          §§goto(addr60);
                                       case 1:
                                          (_loc4_ = new b2WeldJointDef()).collideConnected = this.§8A§;
                                          if(_loc8_)
                                          {
                                             _loc4_.Initialize(param1.§`t§(),param2.§`t§(),param1.§`t§().GetWorldCenter());
                                             if(_loc8_ || param2)
                                             {
                                                return _loc4_;
                                             }
                                          }
                                       case 2:
                                          (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§8A§;
                                          _loc5_.Initialize(param1.§`t§(),param2.§`t§(),param1.§`t§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                          if(!_loc9_)
                                          {
                                             _loc5_.enableLimit = this.§%1§;
                                             if(_loc8_)
                                             {
                                                addr143:
                                                _loc5_.enableMotor = this.§ u§;
                                                if(!(_loc9_ && this))
                                                {
                                                   _loc5_.motorSpeed = this.§^x§;
                                                }
                                                addr176:
                                                (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§8A§;
                                                if(!_loc9_)
                                                {
                                                   _loc6_.Initialize(param1.§`t§(),param2.§`t§(),param1.§`t§().GetWorldCenter(),new b2Vec2(this.§?9§,this.§[q§));
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc8_)
                                                      {
                                                         §§push(this.§,F§);
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr227:
                                                               §§push(false);
                                                               if(!(_loc8_ || _loc3_))
                                                               {
                                                                  addr240:
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               else
                                                               {
                                                                  addr235:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§%1§);
                                                               if(_loc8_)
                                                               {
                                                                  §§goto(addr240);
                                                               }
                                                            }
                                                            §§pop().enableLimit = §§pop();
                                                            if(!_loc9_)
                                                            {
                                                               addr244:
                                                               _loc6_.lowerTranslation = this.§=!!§;
                                                               if(!_loc9_)
                                                               {
                                                                  _loc6_.upperTranslation = this.§+e§;
                                                                  _loc6_.enableMotor = this.§ u§;
                                                                  if(_loc8_)
                                                                  {
                                                                     addr260:
                                                                     _loc6_.maxMotorForce = this.§@X§;
                                                                     if(_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc6_.motorSpeed = this.§^x§;
                                                                  }
                                                                  return _loc6_;
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                }
                                                §§goto(addr244);
                                             }
                                             _loc5_.upperAngle = this.§+e§;
                                             if(!_loc9_)
                                             {
                                                _loc5_.lowerAngle = this.§=!!§;
                                             }
                                             _loc5_.maxMotorTorque = this.§@X§;
                                             if(_loc8_)
                                             {
                                                return _loc5_;
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr143);
                                       case 3:
                                          §§goto(addr143);
                                    }
                                    return null;
                                    addr396:
                                 }
                                 §§goto(addr396);
                              }
                              else
                              {
                                 §§push(§#S§);
                                 if(_loc8_)
                                 {
                                    addr345:
                                    §§push(_loc7_);
                                    if(_loc9_ && _loc3_)
                                    {
                                    }
                                    addr382:
                                    if(§§pop() === §§pop())
                                    {
                                       addr383:
                                       §§push(3);
                                       if(_loc8_ || param2)
                                       {
                                          §§goto(addr391);
                                       }
                                       §§goto(addr396);
                                    }
                                    else
                                    {
                                       §§goto(addr396);
                                       §§push(4);
                                    }
                                    §§goto(addr396);
                                 }
                                 addr381:
                                 §§goto(addr382);
                                 §§push(_loc7_);
                              }
                              §§goto(addr396);
                           }
                           if(§§pop() === §§pop())
                           {
                              if(_loc8_ || _loc3_)
                              {
                              }
                              §§goto(addr371);
                           }
                           else
                           {
                              §§goto(addr381);
                              §§push(§8J§);
                           }
                           §§goto(addr383);
                        }
                        §§goto(addr381);
                     }
                     §§goto(addr371);
                  }
                  §§goto(addr382);
               }
               §§goto(addr345);
            }
            §§goto(addr305);
         }
         §§goto(addr397);
      }
   }
}
