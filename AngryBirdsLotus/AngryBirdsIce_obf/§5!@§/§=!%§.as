package §5!@§
{
   import §9_§.§+>§;
   import §[x§.§2^§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §=!%§
   {
      
      public static const §0m§:uint = 1;
      
      public static const §`!;§:uint = 2;
      
      public static const §=f§:uint = 3;
      
      public static const §8!§:uint = 4;
      
      public static const §;!-§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §0m§ = 1;
            while(true)
            {
               §`!;§ = 2;
               while(!(_loc1_ && §=!%§))
               {
                  §=f§ = 3;
                  while(_loc2_)
                  {
                     §8!§ = 4;
                     loop3:
                     while(!_loc1_)
                     {
                        while(true)
                        {
                           §;!-§ = 5;
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      private var §@!B§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §2x§:Boolean;
      
      private var §[!0§:Number;
      
      private var §5!'§:Number;
      
      private var §<5§:Boolean;
      
      private var §<1§:Number;
      
      private var §&!6§:Boolean;
      
      private var §<u§:Boolean;
      
      private var §!J§:Number;
      
      private var §"1§:Number;
      
      private var §^-§:Number;
      
      private var §=!;§:Number;
      
      public function §=!%§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param2))
         {
            this.mPoint1 = new Point();
            this.mPoint2 = new Point();
            while(true)
            {
               super();
               this.§@!B§ = param1;
               this.mIndex1 = param2;
               addr136:
               while(true)
               {
                  this.mIndex2 = param3;
               }
            }
            addr151:
         }
         while(true)
         {
            this.mPoint1 = param4.clone();
            loop3:
            while(true)
            {
               this.mPoint2 = param5.clone();
               addr106:
               while(_loc15_)
               {
                  if(_loc15_)
                  {
                     this.§2x§ = param7;
                     this.§[!0§ = param8;
                     loop5:
                     while(true)
                     {
                        this.§5!'§ = param9;
                        this.§<5§ = param10;
                        addr85:
                        while(true)
                        {
                           this.§<1§ = param11;
                           if(_loc15_)
                           {
                              continue loop3;
                           }
                           continue loop5;
                        }
                        continue loop3;
                     }
                  }
                  else
                  {
                     §§goto(addr151);
                  }
               }
               §§goto(addr136);
            }
            if(!(_loc15_ || param3))
            {
               continue;
            }
            §§goto(addr51);
         }
      }
      
      public function get type() : int
      {
         return this.§@!B§;
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
      
      public function get §;p§() : Boolean
      {
         return this.§2x§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§[!0§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§5!'§;
      }
      
      public function get §7e§() : Boolean
      {
         return this.§<5§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§<1§;
      }
      
      public function get § g§() : Boolean
      {
         return this.§&!6§;
      }
      
      public function get §-r§() : Boolean
      {
         return this.§<u§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§!J§;
      }
      
      public function get axisX() : Number
      {
         return this.§"1§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§"1§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§^-§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^-§ = param1;
         }
      }
      
      public function get §"!!§() : Number
      {
         return this.§=!;§;
      }
      
      public function set §"!!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!;§ = param1;
         }
      }
      
      public function § x§(param1:§+>§, param2:§+>§) : b2JointDef
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§@!B§);
         if(!_loc9_)
         {
            var _loc7_:* = §§pop();
            if(_loc8_ || _loc3_)
            {
               §§push(§0m§);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(_loc7_);
                  if(!(_loc9_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc8_)
                        {
                           §§push(0);
                           if(!(_loc9_ && param1))
                           {
                              addr421:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = new b2DistanceJointDef();
                                    if(!_loc9_)
                                    {
                                       _loc3_.collideConnected = this.§<u§;
                                       while(true)
                                       {
                                          _loc3_.frequencyHz = 4;
                                          _loc3_.dampingRatio = 0.5;
                                          _loc3_.length = §2^§.§7%§(param1,param2);
                                          while(_loc8_ || _loc3_)
                                          {
                                             _loc3_.Initialize(param1.§>b§(),param2.§>b§(),param1.§>b§().GetPosition(),param2.§>b§().GetPosition());
                                             if(!_loc8_)
                                             {
                                                continue;
                                             }
                                             return _loc3_;
                                             addr64:
                                          }
                                       }
                                    }
                                    §§goto(addr64);
                                 case 1:
                                    (_loc4_ = new b2WeldJointDef()).collideConnected = this.§<u§;
                                    if(_loc8_ || this)
                                    {
                                       _loc4_.Initialize(param1.§>b§(),param2.§>b§(),param1.§>b§().GetWorldCenter());
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    return _loc4_;
                                 case 2:
                                    break;
                                 case 3:
                                    (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§<u§;
                                    if(_loc8_)
                                    {
                                       _loc6_.Initialize(param1.§>b§(),param2.§>b§(),param1.§>b§().GetWorldCenter(),new b2Vec2(this.§"1§,this.§^-§));
                                       while(true)
                                       {
                                          _loc6_.enableLimit = this.§2x§;
                                          _loc6_.lowerTranslation = this.§[!0§;
                                          _loc6_.upperTranslation = this.§5!'§;
                                          while(true)
                                          {
                                             _loc6_.enableMotor = this.§<5§;
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             _loc6_.maxMotorForce = this.§!J§;
                                             if(_loc9_ && param1)
                                             {
                                                continue;
                                             }
                                             _loc6_.motorSpeed = this.§<1§;
                                             return _loc6_;
                                             addr240:
                                          }
                                       }
                                    }
                                    §§goto(addr240);
                                 default:
                                    return null;
                              }
                              (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§<u§;
                              _loc5_.Initialize(param1.§>b§(),param2.§>b§(),param1.§>b§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                              do
                              {
                                 _loc5_.enableLimit = this.§2x§;
                              }
                              while(_loc9_);
                              
                              _loc5_.enableMotor = this.§<5§;
                              do
                              {
                                 _loc5_.motorSpeed = this.§<1§;
                                 _loc5_.upperAngle = this.§5!'§;
                                 _loc5_.lowerAngle = this.§[!0§;
                                 _loc5_.maxMotorTorque = this.§!J§;
                              }
                              while(!_loc8_);
                              
                              return _loc5_;
                              addr420:
                           }
                        }
                        else
                        {
                           addr400:
                           §§push(2);
                           if(_loc9_ && param1)
                           {
                              addr415:
                           }
                        }
                        §§goto(addr420);
                     }
                     else
                     {
                        §§push(§`!;§);
                        if(_loc8_ || param1)
                        {
                           §§push(_loc7_);
                           if(_loc8_ || _loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    addr362:
                                    §§push(1);
                                    if(!_loc9_)
                                    {
                                       §§goto(addr420);
                                    }
                                    else
                                    {
                                       §§goto(addr408);
                                    }
                                 }
                                 §§goto(addr420);
                              }
                              else
                              {
                                 §§push(§=f§);
                                 if(_loc8_ || _loc3_)
                                 {
                                    addr374:
                                    §§push(_loc7_);
                                    if(!(_loc9_ && this))
                                    {
                                       addr382:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc9_ && param2))
                                          {
                                             §§goto(addr400);
                                          }
                                       }
                                       else
                                       {
                                          addr411:
                                          if(§8!§ !== _loc7_)
                                          {
                                             §§goto(addr420);
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr420);
                                    }
                                 }
                                 §§goto(addr411);
                              }
                              §§goto(addr420);
                           }
                           §§goto(addr411);
                        }
                        §§goto(addr374);
                     }
                  }
                  §§goto(addr382);
               }
               §§goto(addr411);
            }
            §§goto(addr362);
         }
         §§goto(addr421);
      }
   }
}
