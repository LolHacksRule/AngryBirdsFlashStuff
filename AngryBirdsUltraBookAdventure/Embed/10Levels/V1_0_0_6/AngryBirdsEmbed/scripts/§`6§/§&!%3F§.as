package §`6§
{
   import §3G§.§!E§;
   import §8u§.§0r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §&!?§
   {
      
      public static const §<m§:uint = 1;
      
      public static const §%+§:uint = 2;
      
      public static const §%!5§:uint = 3;
      
      public static const §?9§:uint = 4;
      
      public static const §`!$§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<m§ = 1;
            if(_loc2_)
            {
               §%+§ = 2;
               if(!_loc1_)
               {
                  addr49:
                  §%!5§ = 3;
                  if(!(_loc1_ && _loc2_))
                  {
                     addr59:
                     §?9§ = 4;
                     if(_loc1_ && _loc2_)
                     {
                     }
                     §§goto(addr72);
                  }
                  §`!$§ = 5;
               }
               addr72:
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr49);
      }
      
      private var §[!+§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §@$§:Boolean;
      
      private var §function§:Number;
      
      private var §7! §:Number;
      
      private var §7!I§:Boolean;
      
      private var § Q§:Number;
      
      private var §<e§:Boolean;
      
      private var §[1§:Boolean;
      
      private var §4v§:Number;
      
      private var §5!E§:Number;
      
      private var §&3§:Number;
      
      private var native:Number;
      
      public function §&!?§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         this.mPoint1 = new Point();
         this.mPoint2 = new Point();
         if(_loc15_ || param1)
         {
            super();
            if(_loc15_ || param3)
            {
               this.§[!+§ = param1;
               addr44:
               this.mIndex1 = param2;
               if(!_loc14_)
               {
                  this.mIndex2 = param3;
                  if(_loc15_)
                  {
                     this.mPoint1 = param4.clone();
                     this.mPoint2 = param5.clone();
                     if(_loc15_ || param3)
                     {
                        addr79:
                        this.§@$§ = param7;
                        if(!(_loc14_ && param2))
                        {
                           addr89:
                           this.§function§ = param8;
                           if(!(_loc14_ && param2))
                           {
                              this.§7! § = param9;
                              this.§7!I§ = param10;
                              if(!(_loc14_ && param3))
                              {
                                 addr112:
                                 this.§ Q§ = param11;
                                 if(_loc15_ || param1)
                                 {
                                    this.§<e§ = param12;
                                    if(!(_loc14_ && param2))
                                    {
                                       §§goto(addr142);
                                    }
                                 }
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr112);
                  }
                  addr142:
                  this.§[1§ = param6;
                  if(_loc15_ || param3)
                  {
                     addr152:
                     this.§4v§ = param13;
                  }
                  return;
               }
               §§goto(addr79);
            }
            §§goto(addr89);
         }
         §§goto(addr44);
      }
      
      public function get type() : int
      {
         return this.§[!+§;
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
      
      public function get § !C§() : Boolean
      {
         return this.§@$§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§function§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§7! §;
      }
      
      public function get §>]§() : Boolean
      {
         return this.§7!I§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§ Q§;
      }
      
      public function get §[7§() : Boolean
      {
         return this.§<e§;
      }
      
      public function get §%!7§() : Boolean
      {
         return this.§[1§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§4v§;
      }
      
      public function get axisX() : Number
      {
         return this.§5!E§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5!E§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§&3§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&3§ = param1;
         }
      }
      
      public function get §@M§() : Number
      {
         return this.native;
      }
      
      public function set §@M§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.native = param1;
         }
      }
      
      public function §1O§(param1:§0r§, param2:§0r§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§[!+§);
         if(!_loc8_)
         {
            var _loc7_:* = §§pop();
            if(!_loc8_)
            {
               §§push(§<m§);
               if(_loc9_ || param2)
               {
                  §§push(_loc7_);
                  if(!_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_ || param1)
                        {
                           §§push(0);
                           if(!(_loc8_ && param1))
                           {
                              addr390:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc3_ = new b2DistanceJointDef();
                                    if(_loc9_ || _loc3_)
                                    {
                                       _loc3_.collideConnected = this.§[1§;
                                       if(_loc9_ || this)
                                       {
                                          _loc3_.frequencyHz = 4;
                                          addr56:
                                          _loc3_.dampingRatio = 0.5;
                                          if(!_loc8_)
                                          {
                                             §§goto(addr61);
                                          }
                                          §§goto(addr74);
                                       }
                                       addr61:
                                       _loc3_.length = §!E§.§">§(param1,param2);
                                       if(!(_loc8_ && param1))
                                       {
                                          addr74:
                                          _loc3_.Initialize(param1.§?n§(),param2.§?n§(),param1.§?n§().GetPosition(),param2.§?n§().GetPosition());
                                          if(!(_loc9_ || param1))
                                          {
                                             addr95:
                                             (_loc4_ = new b2WeldJointDef()).collideConnected = this.§[1§;
                                             if(_loc9_)
                                             {
                                                _loc4_.Initialize(param1.§?n§(),param2.§?n§(),param1.§?n§().GetWorldCenter());
                                                if(_loc9_)
                                                {
                                                   return _loc4_;
                                                }
                                                addr119:
                                                (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§[1§;
                                                _loc5_.Initialize(param1.§?n§(),param2.§?n§(),param1.§?n§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                                _loc5_.enableLimit = this.§@$§;
                                                _loc5_.enableMotor = this.§7!I§;
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   _loc5_.motorSpeed = this.§ Q§;
                                                   _loc5_.upperAngle = this.§7! §;
                                                   _loc5_.lowerAngle = this.§function§;
                                                   _loc5_.maxMotorTorque = this.§4v§;
                                                   return _loc5_;
                                                }
                                                (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§[1§;
                                                _loc6_.Initialize(param1.§?n§(),param2.§?n§(),param1.§?n§().GetWorldCenter(),new b2Vec2(this.§5!E§,this.§&3§));
                                                addr178:
                                                §§push(_loc6_);
                                                if(!_loc8_)
                                                {
                                                   §§push(this.§<e§);
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr225:
                                                         §§push(false);
                                                         if(_loc9_ || param1)
                                                         {
                                                            addr233:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§@$§);
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      §§pop().enableLimit = §§pop();
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         _loc6_.lowerTranslation = this.§function§;
                                                         if(!_loc8_)
                                                         {
                                                            _loc6_.upperTranslation = this.§7! §;
                                                            _loc6_.enableMotor = this.§7!I§;
                                                         }
                                                         _loc6_.maxMotorForce = this.§4v§;
                                                         if(_loc9_)
                                                         {
                                                            _loc6_.motorSpeed = this.§ Q§;
                                                            if(_loc8_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         return _loc6_;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr119);
                                          }
                                       }
                                       return _loc3_;
                                    }
                                    §§goto(addr56);
                                 case 1:
                                    §§goto(addr95);
                                 case 2:
                                    §§goto(addr119);
                                 case 3:
                                    §§goto(addr178);
                              }
                              return null;
                              addr389:
                           }
                        }
                        else
                        {
                           addr331:
                           §§push(1);
                           if(_loc8_)
                           {
                              addr372:
                           }
                        }
                        §§goto(addr389);
                     }
                     else
                     {
                        §§push(§%+§);
                        if(!_loc8_)
                        {
                           addr320:
                           §§push(_loc7_);
                           if(!(_loc8_ && this))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§goto(addr331);
                                 }
                                 else
                                 {
                                    addr369:
                                    §§push(2);
                                    if(!_loc8_)
                                    {
                                       §§goto(addr372);
                                    }
                                    §§goto(addr389);
                                 }
                              }
                              else
                              {
                                 §§push(§%!5§);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(_loc7_);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       addr351:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§goto(addr369);
                                          }
                                          else
                                          {
                                             addr376:
                                             §§push(3);
                                             if(_loc8_ && param1)
                                             {
                                             }
                                             §§goto(addr389);
                                          }
                                       }
                                       else
                                       {
                                          addr374:
                                          §§push(§?9§);
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr376);
                                    }
                                 }
                                 §§goto(addr374);
                              }
                              §§goto(addr389);
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr376);
                           }
                           else
                           {
                              §§goto(addr389);
                              §§push(4);
                           }
                           §§goto(addr389);
                        }
                        §§goto(addr374);
                     }
                  }
                  §§goto(addr351);
               }
               §§goto(addr320);
            }
            §§goto(addr376);
         }
         §§goto(addr390);
      }
   }
}
