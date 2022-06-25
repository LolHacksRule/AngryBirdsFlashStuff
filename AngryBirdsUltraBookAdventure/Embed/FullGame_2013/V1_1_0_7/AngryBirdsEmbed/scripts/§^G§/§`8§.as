package §^G§
{
   import §6A§.§ !§;
   import §^!A§.§;!%§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Joints.b2DistanceJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2JointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2PrismaticJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2RevoluteJointDef;
   import com.rovio.Box2D.Dynamics.Joints.b2WeldJointDef;
   import flash.geom.Point;
   
   public class §`8§
   {
      
      public static const §3r§:uint = 1;
      
      public static const §'X§:uint = 2;
      
      public static const §12§:uint = 3;
      
      public static const §#!K§:uint = 4;
      
      public static const §9!+§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3r§ = 1;
            if(_loc2_)
            {
               §'X§ = 2;
               if(_loc2_)
               {
                  §12§ = 3;
                  if(_loc1_)
                  {
                  }
                  §§goto(addr52);
               }
            }
            §#!K§ = 4;
            if(!_loc1_)
            {
               §9!+§ = 5;
            }
         }
         addr52:
      }
      
      private var §<"§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §'! §:Boolean;
      
      private var §?N§:Number;
      
      private var §"M§:Number;
      
      private var §8x§:Boolean;
      
      private var §-J§:Number;
      
      private var § var§:Boolean;
      
      private var §@y§:Boolean;
      
      private var §,"§:Number;
      
      private var §<!J§:Number;
      
      private var §?!§:Number;
      
      private var §&G§:Number;
      
      public function §`8§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         this.mPoint1 = new Point();
         if(_loc15_ || param3)
         {
            this.mPoint2 = new Point();
         }
         super();
         if(!_loc14_)
         {
            this.§<"§ = param1;
            if(_loc15_ || param1)
            {
               addr56:
               this.mIndex1 = param2;
               this.mIndex2 = param3;
               if(_loc15_ || this)
               {
                  this.mPoint1 = param4.clone();
                  this.mPoint2 = param5.clone();
                  if(!_loc14_)
                  {
                     this.§'! § = param7;
                  }
                  this.§?N§ = param8;
                  if(!(_loc14_ && param2))
                  {
                     this.§"M§ = param9;
                     this.§8x§ = param10;
                     addr108:
                     this.§-J§ = param11;
                     this.§ var§ = param12;
                  }
                  this.§@y§ = param6;
                  this.§,"§ = param13;
                  return;
               }
            }
            §§goto(addr108);
         }
         §§goto(addr56);
      }
      
      public function get type() : int
      {
         return this.§<"§;
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
      
      public function get §1D§() : Boolean
      {
         return this.§'! §;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§?N§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§"M§;
      }
      
      public function get §8l§() : Boolean
      {
         return this.§8x§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§-J§;
      }
      
      public function get §',§() : Boolean
      {
         return this.§ var§;
      }
      
      public function get §@=§() : Boolean
      {
         return this.§@y§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§,"§;
      }
      
      public function get axisX() : Number
      {
         return this.§<!J§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<!J§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§?!§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?!§ = param1;
         }
      }
      
      public function get §=e§() : Number
      {
         return this.§&G§;
      }
      
      public function set §=e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&G§ = param1;
         }
      }
      
      public function getAsSerializableObject() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Object = new Object();
         if(_loc2_)
         {
            _loc1_.type = this.type;
            if(_loc2_)
            {
               _loc1_.index1 = this.index1;
            }
            _loc1_.index2 = this.index2;
            _loc1_.x1 = this.point1.x;
            if(_loc2_ || _loc2_)
            {
               _loc1_.x2 = this.point2.x;
               if(_loc2_ || this)
               {
                  _loc1_.y1 = this.point1.y;
                  if(_loc2_)
                  {
                     §§goto(addr67);
                  }
                  §§goto(addr104);
               }
               §§goto(addr178);
            }
            §§goto(addr104);
         }
         addr67:
         _loc1_.y2 = this.point2.y;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.limit = this.§1D§;
            if(!(_loc3_ && _loc1_))
            {
               _loc1_.lowerLimit = this.lowerLimit;
               addr104:
               _loc1_.upperLimit = this.upperLimit;
               _loc1_.motor = this.§8l§;
               _loc1_.motorSpeed = this.motorSpeed;
               if(_loc2_ || _loc1_)
               {
                  _loc1_.backAndForth = this.§',§;
                  if(_loc2_)
                  {
                     _loc1_.collideConnected = this.§@=§;
                     if(!(_loc3_ && _loc1_))
                     {
                        _loc1_.maxTorque = this.maxTorque;
                        _loc1_.axisX = this.axisX;
                        if(!_loc2_)
                        {
                        }
                     }
                     §§goto(addr182);
                  }
                  _loc1_.axisY = this.axisY;
                  if(_loc2_ || _loc2_)
                  {
                     if(!isNaN(this.§=e§))
                     {
                        if(!_loc3_)
                        {
                           addr178:
                           _loc1_.destroyTimer = this.§=e§;
                        }
                     }
                  }
                  §§goto(addr178);
               }
            }
         }
         addr182:
         return _loc1_;
      }
      
      public function §?7§(param1:§;!%§, param2:§;!%§) : b2JointDef
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§<"§);
         if(!(_loc8_ && param2))
         {
            var _loc7_:* = §§pop();
            if(_loc9_ || this)
            {
               §§push(§3r§);
               if(_loc9_)
               {
                  §§push(_loc7_);
                  if(!_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc9_)
                        {
                           §§push(0);
                           if(_loc8_ && _loc3_)
                           {
                              addr371:
                           }
                        }
                        else
                        {
                           addr413:
                           §§push(3);
                           if(!(_loc8_ && _loc3_))
                           {
                              addr421:
                           }
                        }
                        addr427:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(_loc9_ || _loc3_)
                              {
                                 _loc3_.collideConnected = this.§@y§;
                                 if(!_loc8_)
                                 {
                                    _loc3_.frequencyHz = 4;
                                    if(_loc9_ || this)
                                    {
                                    }
                                    addr88:
                                    (_loc4_ = new b2WeldJointDef()).collideConnected = this.§@y§;
                                    if(!_loc8_)
                                    {
                                       _loc4_.Initialize(param1.§'[§(),param2.§'[§(),param1.§'[§().GetWorldCenter());
                                       if(!_loc8_)
                                       {
                                          return _loc4_;
                                       }
                                       addr112:
                                       (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§@y§;
                                       if(!_loc8_)
                                       {
                                          _loc5_.Initialize(param1.§'[§(),param2.§'[§(),param1.§'[§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                          §§push(_loc5_);
                                          if(_loc9_ || this)
                                          {
                                             §§push(this.§ var§);
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   addr158:
                                                   §§push(false);
                                                   if(!_loc9_)
                                                   {
                                                      addr171:
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.§'! §);
                                                   if(_loc9_ || param2)
                                                   {
                                                      §§goto(addr171);
                                                   }
                                                }
                                             }
                                             §§pop().enableLimit = §§pop();
                                             if(!(_loc8_ && param1))
                                             {
                                                _loc5_.enableMotor = this.§8x§;
                                                _loc5_.motorSpeed = this.§-J§;
                                                if(_loc9_)
                                                {
                                                   _loc5_.upperAngle = this.§"M§;
                                                   if(_loc9_)
                                                   {
                                                      addr196:
                                                      _loc5_.lowerAngle = this.§?N§;
                                                      if(_loc9_ || this)
                                                      {
                                                         _loc5_.maxMotorTorque = this.§,"§;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr223:
                                                      (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§@y§;
                                                      _loc6_.Initialize(param1.§'[§(),param2.§'[§(),param1.§'[§().GetWorldCenter(),new b2Vec2(this.§<!J§,this.§?!§));
                                                      §§push(_loc6_);
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         §§push(this.§ var§);
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr265:
                                                               §§push(false);
                                                               if(_loc8_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§'! §);
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                            }
                                                         }
                                                         §§pop().enableLimit = §§pop();
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            _loc6_.lowerTranslation = this.§?N§;
                                                            if(!_loc9_)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         _loc6_.upperTranslation = this.§"M§;
                                                         if(!_loc8_)
                                                         {
                                                            _loc6_.enableMotor = this.§8x§;
                                                            _loc6_.maxMotorForce = this.§,"§;
                                                            if(!_loc8_)
                                                            {
                                                               _loc6_.motorSpeed = this.§-J§;
                                                               if(_loc8_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            return _loc6_;
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                }
                                                return _loc5_;
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr112);
                                 }
                                 _loc3_.dampingRatio = 0.5;
                                 if(!(_loc8_ && this))
                                 {
                                    _loc3_.length = § !§.§7F§(param1,param2);
                                    _loc3_.Initialize(param1.§'[§(),param2.§'[§(),param1.§'[§().GetPosition(),param2.§'[§().GetPosition());
                                 }
                                 else
                                 {
                                    §§goto(addr88);
                                 }
                              }
                              return _loc3_;
                           case 1:
                              §§goto(addr88);
                           case 2:
                              §§goto(addr112);
                           case 3:
                              §§goto(addr223);
                        }
                        return null;
                        addr426:
                     }
                     else
                     {
                        §§push(§'X§);
                        if(_loc9_)
                        {
                           §§push(_loc7_);
                           if(!_loc8_)
                           {
                              addr365:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc9_)
                                 {
                                    §§push(1);
                                    if(_loc9_)
                                    {
                                       §§goto(addr371);
                                    }
                                 }
                                 else
                                 {
                                    addr401:
                                    §§push(2);
                                    if(_loc9_ || param2)
                                    {
                                    }
                                 }
                                 §§goto(addr426);
                              }
                              else
                              {
                                 §§push(§12§);
                                 if(!_loc8_)
                                 {
                                    §§push(_loc7_);
                                    if(_loc9_ || _loc3_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc8_ && param2))
                                          {
                                             §§goto(addr401);
                                          }
                                          else
                                          {
                                             §§goto(addr413);
                                          }
                                       }
                                       else
                                       {
                                          addr412:
                                          if(§#!K§ === _loc7_)
                                          {
                                             §§goto(addr413);
                                          }
                                          else
                                          {
                                             §§push(4);
                                          }
                                       }
                                       §§goto(addr413);
                                    }
                                 }
                                 §§goto(addr412);
                              }
                           }
                        }
                        §§goto(addr412);
                     }
                     §§goto(addr413);
                  }
                  §§goto(addr365);
               }
               §§goto(addr412);
            }
            §§goto(addr401);
         }
         §§goto(addr427);
      }
   }
}
