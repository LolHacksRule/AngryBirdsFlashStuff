package §_-IG§
{
   import §_-1N§.b2DistanceJointDef;
   import §_-1N§.b2Joint;
   import §_-1N§.b2JointDef;
   import §_-1N§.b2RevoluteJointDef;
   import §_-1N§.b2WeldJointDef;
   import §_-CR§.§_-Dz§;
   import §_-Ja§.b2Vec2;
   import §_-OJ§.§_-tL§;
   import flash.geom.Point;
   
   public class §_-Hj§
   {
      
      public static const §_-GZ§:uint = 1;
      
      public static const §_-KY§:uint = 2;
      
      public static const §_-3H§:uint = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §_-GZ§ = 1;
            if(!(_loc1_ && _loc1_))
            {
               addr38:
               §_-KY§ = 2;
               if(!(_loc1_ && _loc2_))
               {
                  §_-3H§ = 3;
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public var type:int;
      
      public var index1:int;
      
      public var index2:int;
      
      public var p1:Point;
      
      public var p2:Point;
      
      public var limit:Boolean;
      
      public var backAndForth:Boolean;
      
      public var motor:Boolean;
      
      public var motorSpeed:Number;
      
      public var lowerLimit:Number;
      
      public var upperLimit:Number;
      
      public var collideConnected:Boolean;
      
      public var maxTorque:Number;
      
      public var §_-WU§:b2Joint;
      
      public function §_-Hj§(param1:int, param2:int, param3:int)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.p1 = new Point();
         this.p2 = new Point();
         super();
         this.type = param1;
         this.index1 = param2;
         this.index2 = param3;
      }
      
      public function §_-tB§(param1:§_-Dz§, param2:§_-Dz§) : b2JointDef
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         §§push(this.type);
         if(_loc7_)
         {
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               §§push(§_-GZ§);
               if(!_loc8_)
               {
                  §§push(_loc6_);
                  if(_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc8_)
                        {
                           §§push(0);
                           if(_loc8_)
                           {
                           }
                        }
                        else
                        {
                           addr218:
                           §§push(1);
                           if(_loc8_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(§_-KY§);
                        if(_loc7_ || param2)
                        {
                           addr207:
                           §§push(_loc6_);
                           if(_loc7_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§goto(addr218);
                                 }
                                 else
                                 {
                                    addr225:
                                    §§push(2);
                                    if(_loc7_)
                                    {
                                       addr241:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc3_ = new b2DistanceJointDef();
                                             if(_loc7_)
                                             {
                                                _loc3_.collideConnected = this.collideConnected;
                                                if(_loc7_)
                                                {
                                                   _loc3_.§_-Kf§ = 4;
                                                }
                                                _loc3_.§_-Co§ = 0.5;
                                                if(_loc7_ || this)
                                                {
                                                   addr49:
                                                   _loc3_.length = §_-tL§.§_-2L§(param1,param2);
                                                }
                                                _loc3_.§_-lc§(param1.§_-zq§(),param2.§_-zq§(),param1.§_-zq§().GetPosition(),param2.§_-zq§().GetPosition());
                                                return _loc3_;
                                             }
                                             §§goto(addr49);
                                          case 1:
                                             (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
                                             if(_loc7_ || _loc3_)
                                             {
                                                _loc4_.§_-lc§(param1.§_-zq§(),param2.§_-zq§(),param1.§_-zq§().§_-lC§());
                                                if(_loc7_)
                                                {
                                                   return _loc4_;
                                                }
                                             }
                                          case 2:
                                             (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
                                             _loc5_.§_-lc§(param1.§_-zq§(),param2.§_-zq§(),param1.§_-zq§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
                                             if(!_loc8_)
                                             {
                                                _loc5_.§_-3J§ = this.limit;
                                                if(_loc7_)
                                                {
                                                   _loc5_.§_-mY§ = this.motor;
                                                   _loc5_.motorSpeed = this.motorSpeed;
                                                   if(_loc7_ || this)
                                                   {
                                                      _loc5_.§_-VQ§ = this.upperLimit;
                                                      if(_loc7_ || param2)
                                                      {
                                                         addr165:
                                                         _loc5_.§_-Mn§ = this.lowerLimit;
                                                         addr169:
                                                         _loc5_.§_-fo§ = this.maxTorque;
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      return _loc5_;
                                                   }
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr165);
                                       }
                                       return null;
                                       addr240:
                                    }
                                    §§goto(addr240);
                                 }
                              }
                              else
                              {
                                 §§push(§_-3H§);
                              }
                              §§goto(addr225);
                           }
                           addr224:
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr225);
                           }
                           else
                           {
                              §§goto(addr240);
                              §§push(3);
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr224);
                        §§push(_loc6_);
                     }
                     §§goto(addr240);
                  }
                  §§goto(addr224);
               }
               §§goto(addr207);
            }
            §§goto(addr225);
         }
         §§goto(addr241);
      }
   }
}
