package §&o§
{
   import §-!&§.§3!,§;
   import §9T§.§1r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §3,§
   {
      
      public static const §!!D§:uint = 1;
      
      public static const §'!!§:uint = 2;
      
      public static const §]K§:uint = 3;
      
      public static const §0!9§:uint = 4;
      
      public static const §>R§:uint = 5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!D§ = 1;
         }
         loop0:
         while(true)
         {
            §'!!§ = 2;
            while(true)
            {
               §]K§ = 3;
               while(_loc1_ || _loc2_)
               {
                  §0!9§ = 4;
                  continue loop0;
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §6!'§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §`#§:Boolean;
      
      private var § !R§:Number;
      
      private var §'!,§:Number;
      
      private var §4+§:Boolean;
      
      private var §;!N§:Number;
      
      private var §]&§:Boolean;
      
      private var §%P§:Boolean;
      
      private var §#3§:Number;
      
      private var §]o§:Number;
      
      private var §[n§:Number;
      
      private var §+!I§:Number;
      
      public function §3,§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            this.mPoint1 = new Point();
            loop0:
            while(true)
            {
               this.mPoint2 = new Point();
               addr159:
               while(true)
               {
                  super();
                  addr41:
                  this.§#3§ = param13;
                  if(!_loc15_)
                  {
                     return;
                     addr29:
                  }
               }
               while(true)
               {
                  if(_loc14_ || param1)
                  {
                     this.§'!,§ = param9;
                     loop6:
                     while(!_loc15_)
                     {
                        this.§4+§ = param10;
                        loop7:
                        while(_loc14_ || param2)
                        {
                           this.§;!N§ = param11;
                           loop8:
                           while(true)
                           {
                              if(_loc14_)
                              {
                                 addr57:
                                 if(_loc15_ && param1)
                                 {
                                    break;
                                 }
                                 this.§]&§ = param12;
                                 while(true)
                                 {
                                    if(!_loc15_)
                                    {
                                       if(!_loc14_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop8;
                                 }
                                 continue loop6;
                              }
                              continue loop7;
                           }
                           while(true)
                           {
                              this.§6!'§ = param1;
                              break loop7;
                              §§goto(addr57);
                           }
                           §§goto(addr29);
                        }
                        while(true)
                        {
                           this.mIndex1 = param2;
                           this.mIndex2 = param3;
                           this.mPoint1 = param4.clone();
                           do
                           {
                              this.mPoint2 = param5.clone();
                              this.§`#§ = param7;
                           }
                           while(!_loc14_);
                           
                           this.§ !R§ = param8;
                           break loop6;
                           §§goto(addr79);
                        }
                        addr79:
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr159);
            }
         }
         §§goto(addr153);
      }
      
      public function get type() : int
      {
         return this.§6!'§;
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
      
      public function get §%H§() : Boolean
      {
         return this.§`#§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§ !R§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§'!,§;
      }
      
      public function get §9!0§() : Boolean
      {
         return this.§4+§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§;!N§;
      }
      
      public function get §@L§() : Boolean
      {
         return this.§]&§;
      }
      
      public function get §<!#§() : Boolean
      {
         return this.§%P§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§#3§;
      }
      
      public function get axisX() : Number
      {
         return this.§]o§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§]o§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§[n§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§[n§ = param1;
         }
      }
      
      public function get §9"§() : Number
      {
         return this.§+!I§;
      }
      
      public function set §9"§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!I§ = param1;
         }
      }
      
      public function §<,§(param1:§3!,§, param2:§3!,§) : b2JointDef
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§6!'§);
         if(!(_loc9_ && _loc3_))
         {
            var _loc7_:* = §§pop();
            if(!_loc9_)
            {
               §§push(§!!D§);
               if(!_loc9_)
               {
                  §§push(_loc7_);
                  if(_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(0);
                           if(!_loc9_)
                           {
                              addr425:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = new b2DistanceJointDef();
                                    if(_loc8_)
                                    {
                                       _loc3_.collideConnected = this.§%P§;
                                       _loc3_.frequencyHz = 4;
                                       _loc3_.dampingRatio = 0.5;
                                    }
                                    _loc3_.length = §1r§.§?!&§(param1,param2);
                                    do
                                    {
                                       _loc3_.Initialize(param1.§`%§(),param2.§`%§(),param1.§`%§().GetPosition(),param2.§`%§().GetPosition());
                                    }
                                    while(_loc9_);
                                    
                                    return _loc3_;
                                 case 1:
                                    (_loc4_ = new b2WeldJointDef()).collideConnected = this.§%P§;
                                    if(_loc8_ || this)
                                    {
                                       _loc4_.Initialize(param1.§`%§(),param2.§`%§(),param1.§`%§().GetWorldCenter());
                                       if(!_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                    return _loc4_;
                                 case 2:
                                    break;
                                 case 3:
                                    (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§%P§;
                                    if(!_loc9_)
                                    {
                                       _loc6_.Initialize(param1.§`%§(),param2.§`%§(),param1.§`%§().GetWorldCenter(),new b2Vec2(this.§]o§,this.§[n§));
                                       do
                                       {
                                          §§push(_loc6_);
                                          if(!_loc9_)
                                          {
                                             §§push(this.§]&§);
                                             if(_loc8_)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(this.§`#§);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   continue;
                                                }
                                                addr281:
                                                §§push(false);
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr281);
                                       }
                                       while(§§pop().enableLimit = §§pop(), !(_loc8_ || this));
                                       
                                       _loc6_.lowerTranslation = this.§ !R§;
                                    }
                                    _loc6_.upperTranslation = this.§'!,§;
                                    while(true)
                                    {
                                       _loc6_.enableMotor = this.§4+§;
                                       while(!(_loc9_ && this))
                                       {
                                          _loc6_.maxMotorForce = this.§#3§;
                                          while(!_loc9_)
                                          {
                                             _loc6_.motorSpeed = this.§;!N§;
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                return _loc6_;
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 default:
                                    return null;
                              }
                              (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§%P§;
                              if(_loc8_)
                              {
                                 _loc5_.Initialize(param1.§`%§(),param2.§`%§(),param1.§`%§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                 _loc5_.enableLimit = this.§`#§;
                                 _loc5_.enableMotor = this.§4+§;
                                 _loc5_.motorSpeed = this.§;!N§;
                                 _loc5_.upperAngle = this.§'!,§;
                                 _loc5_.lowerAngle = this.§ !R§;
                                 _loc5_.maxMotorTorque = this.§#3§;
                              }
                              return _loc5_;
                              addr424:
                           }
                        }
                        else
                        {
                           addr366:
                           §§push(1);
                           if(_loc8_ || param2)
                           {
                           }
                        }
                        §§goto(addr424);
                     }
                     else
                     {
                        §§push(§'!!§);
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(_loc7_);
                           if(_loc8_ || _loc3_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc9_ && param1))
                                 {
                                    §§goto(addr366);
                                 }
                                 else
                                 {
                                    addr416:
                                    §§push(3);
                                    if(!_loc9_)
                                    {
                                       §§goto(addr419);
                                    }
                                    §§goto(addr424);
                                 }
                              }
                              else
                              {
                                 §§push(§]K§);
                                 if(_loc8_ || this)
                                 {
                                    addr383:
                                    §§push(_loc7_);
                                    if(_loc8_ || _loc3_)
                                    {
                                    }
                                    addr415:
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr416);
                                    }
                                    else
                                    {
                                       §§goto(addr424);
                                       §§push(4);
                                    }
                                    §§goto(addr424);
                                 }
                                 addr414:
                                 §§goto(addr415);
                                 §§push(_loc7_);
                              }
                              §§goto(addr416);
                           }
                           if(§§pop() === §§pop())
                           {
                              if(!_loc9_)
                              {
                                 §§push(2);
                                 if(_loc8_ || param2)
                                 {
                                 }
                                 §§goto(addr424);
                              }
                              else
                              {
                                 §§goto(addr416);
                              }
                           }
                           else
                           {
                              §§push(§0!9§);
                           }
                           §§goto(addr416);
                        }
                        §§goto(addr414);
                     }
                  }
                  §§goto(addr415);
               }
               §§goto(addr383);
            }
            §§goto(addr416);
         }
         §§goto(addr425);
      }
   }
}
