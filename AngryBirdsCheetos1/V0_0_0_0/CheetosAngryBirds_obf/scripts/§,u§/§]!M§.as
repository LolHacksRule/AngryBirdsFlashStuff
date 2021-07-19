package §,u§
{
   import §-!7§.§@m§;
   import §3g§.b2DistanceJointDef;
   import §3g§.b2Joint;
   import §3g§.b2JointDef;
   import §3g§.b2RevoluteJointDef;
   import §3g§.b2WeldJointDef;
   import §9"§.b2Vec2;
   import §9N§.§9!%§;
   import flash.geom.Point;
   
   public class §]!M§
   {
      
      public static const §`c§:uint = 1;
      
      public static const §'S§:uint = 2;
      
      public static const §7W§:uint = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §]!M§))
         {
            §`c§ = 1;
            while(true)
            {
               §'S§ = 2;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §7W§ = 3;
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
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
      
      public var set:b2Joint;
      
      public function §]!M§(param1:int, param2:int, param3:int)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.p1 = new Point();
            while(true)
            {
               this.p2 = new Point();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  do
                  {
                     this.type = param1;
                     while(true)
                     {
                        this.index1 = param2;
                        while(_loc5_ || this)
                        {
                           continue loop1;
                           this.index2 = param3;
                           if(_loc5_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(_loc4_);
                  
               }
            }
         }
      }
      
      public function §class§(param1:§@m§, param2:§@m§) : b2JointDef
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         §§push(this.type);
         if(!(_loc7_ && this))
         {
            var _loc6_:* = §§pop();
            if(!_loc7_)
            {
               §§push(§`c§);
               if(!(_loc7_ && this))
               {
                  §§push(_loc6_);
                  if(_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc8_ || param1)
                        {
                           addr289:
                           §§push(0);
                           if(_loc7_ && this)
                           {
                           }
                        }
                        else
                        {
                           addr312:
                           §§push(1);
                           if(_loc7_ && _loc3_)
                           {
                              addr337:
                           }
                        }
                     }
                     else
                     {
                        §§push(§'S§);
                        if(!_loc7_)
                        {
                           §§push(_loc6_);
                           if(!(_loc7_ && param1))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr312);
                                 }
                                 addr343:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc3_ = new b2DistanceJointDef();
                                       if(_loc8_ || param2)
                                       {
                                          _loc3_.collideConnected = this.collideConnected;
                                          while(true)
                                          {
                                             _loc3_.§5X§ = 4;
                                             while(!(_loc7_ && param2))
                                             {
                                                _loc3_.§@N§ = 0.5;
                                                _loc3_.length = §9!%§.§86§(param1,param2);
                                                _loc3_.§1D§(param1.§`!#§(),param2.§`!#§(),param1.§`!#§().GetPosition(),param2.§`!#§().GetPosition());
                                                if(_loc7_ && _loc3_)
                                                {
                                                   continue;
                                                }
                                                return _loc3_;
                                                addr81:
                                             }
                                          }
                                       }
                                       §§goto(addr81);
                                    case 1:
                                       (_loc4_ = new b2WeldJointDef()).collideConnected = this.collideConnected;
                                       if(_loc8_ || param2)
                                       {
                                          _loc4_.§1D§(param1.§`!#§(),param2.§`!#§(),param1.§`!#§().§05§());
                                          if(_loc7_ && param2)
                                          {
                                             break;
                                          }
                                       }
                                       return _loc4_;
                                    case 2:
                                       break;
                                    default:
                                       return null;
                                 }
                                 (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.collideConnected;
                                 addr342:
                                 if(!_loc7_)
                                 {
                                    _loc5_.§1D§(param1.§`!#§(),param2.§`!#§(),param1.§`!#§().GetWorldPoint(new b2Vec2(this.p1.x,this.p1.y)));
                                    while(true)
                                    {
                                       _loc5_.§9[§ = this.limit;
                                       while(!_loc7_)
                                       {
                                          _loc5_.§<S§ = this.motor;
                                          _loc5_.motorSpeed = this.motorSpeed;
                                          loop4:
                                          while(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                _loc5_.§33§ = this.upperLimit;
                                                do
                                                {
                                                   _loc5_.§4q§ = this.lowerLimit;
                                                   _loc5_.§6[§ = this.maxTorque;
                                                }
                                                while(!_loc8_);
                                                
                                                if(_loc8_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             return _loc5_;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr223);
                                 addr342:
                              }
                              else
                              {
                                 addr323:
                                 if(§7W§ !== _loc6_)
                                 {
                                    §§goto(addr342);
                                    §§push(3);
                                 }
                                 §§goto(addr342);
                              }
                              §§push(2);
                              if(_loc8_)
                              {
                                 §§goto(addr337);
                              }
                           }
                        }
                        §§goto(addr323);
                     }
                     §§goto(addr342);
                  }
               }
               §§goto(addr323);
            }
            §§goto(addr289);
         }
         §§goto(addr343);
      }
   }
}
