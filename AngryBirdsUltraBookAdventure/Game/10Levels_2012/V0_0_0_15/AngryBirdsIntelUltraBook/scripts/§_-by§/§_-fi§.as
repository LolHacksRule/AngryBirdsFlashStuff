package §_-by§
{
   import §_-09-§.b2DistanceJointDef;
   import §_-09-§.b2JointDef;
   import §_-09-§.b2PrismaticJointDef;
   import §_-09-§.b2RevoluteJointDef;
   import §_-09-§.b2WeldJointDef;
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import §_-lt§.§_-eZ§;
   import flash.geom.Point;
   
   public class §_-fi§
   {
      
      public static const §_-yD§:uint = 1;
      
      public static const §_-gY§:uint = 2;
      
      public static const §_-N0§:uint = 3;
      
      public static const §_-37§:uint = 4;
      
      public static const §_-09G§:uint = 5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-yD§ = 1;
            loop0:
            do
            {
               §_-gY§ = 2;
               while(true)
               {
                  §_-N0§ = 3;
                  while(!(_loc1_ && §_-fi§))
                  {
                     §_-37§ = 4;
                     do
                     {
                        §_-09G§ = 5;
                     }
                     while(!(_loc2_ || _loc1_));
                     
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var §_-kV§:int;
      
      protected var mIndex1:int;
      
      protected var mIndex2:int;
      
      private var mPoint1:Point;
      
      private var mPoint2:Point;
      
      private var §_-9H§:Boolean;
      
      private var §_-Fd§:Number;
      
      private var §_-Gl§:Number;
      
      private var §_-Lq§:Boolean;
      
      private var §_-oE§:Number;
      
      private var §_-jj§:Boolean;
      
      private var §_-sm§:Boolean;
      
      private var §_-gK§:Number;
      
      private var §_-b7§:Number;
      
      private var §_-0Bq§:Number;
      
      private var §_-0Dr§:Number;
      
      public function §_-fi§(param1:int, param2:int, param3:int, param4:Point, param5:Point, param6:Boolean = false, param7:Boolean = false, param8:Number = 0.0, param9:Number = 0.0, param10:Boolean = false, param11:Number = 0.0, param12:Boolean = false, param13:Number = 0.0)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!_loc14_)
         {
            this.mPoint1 = new Point();
            loop0:
            while(true)
            {
               this.mPoint2 = new Point();
               addr190:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     this.§_-kV§ = param1;
                     addr180:
                     while(true)
                     {
                        this.mIndex1 = param2;
                        addr175:
                        while(true)
                        {
                           this.mIndex2 = param3;
                           addr168:
                           while(_loc15_)
                           {
                           }
                        }
                        addr96:
                        if(!(_loc14_ && param3))
                        {
                           continue loop2;
                        }
                     }
                  }
                  if(_loc14_ && param1)
                  {
                     continue;
                  }
                  this.§_-Gl§ = param9;
                  §§goto(addr94);
               }
               while(true)
               {
                  if(!(_loc15_ || param3))
                  {
                     continue loop0;
                  }
                  this.§_-9H§ = param7;
                  §§goto(addr134);
               }
               §§goto(addr190);
            }
         }
         while(true)
         {
            this.mPoint1 = param4.clone();
            §§goto(addr163);
         }
      }
      
      public function get type() : int
      {
         return this.§_-kV§;
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
      
      public function get §_-Wm§() : Boolean
      {
         return this.§_-9H§;
      }
      
      public function get lowerLimit() : Number
      {
         return this.§_-Fd§;
      }
      
      public function get upperLimit() : Number
      {
         return this.§_-Gl§;
      }
      
      public function get §_-5R§() : Boolean
      {
         return this.§_-Lq§;
      }
      
      public function get motorSpeed() : Number
      {
         return this.§_-oE§;
      }
      
      public function get §_-01R§() : Boolean
      {
         return this.§_-jj§;
      }
      
      public function get §_-v7§() : Boolean
      {
         return this.§_-sm§;
      }
      
      public function get maxTorque() : Number
      {
         return this.§_-gK§;
      }
      
      public function get axisX() : Number
      {
         return this.§_-b7§;
      }
      
      public function set axisX(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-b7§ = param1;
         }
      }
      
      public function get axisY() : Number
      {
         return this.§_-0Bq§;
      }
      
      public function set axisY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-0Bq§ = param1;
         }
      }
      
      public function get §_-0e§() : Number
      {
         return this.§_-0Dr§;
      }
      
      public function set §_-0e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-0Dr§ = param1;
         }
      }
      
      public function §_-sy§(param1:§_-eZ§, param2:§_-eZ§) : b2JointDef
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:b2DistanceJointDef = null;
         var _loc4_:b2WeldJointDef = null;
         var _loc5_:b2RevoluteJointDef = null;
         var _loc6_:b2PrismaticJointDef = null;
         §§push(this.§_-kV§);
         if(!_loc9_)
         {
            var _loc7_:* = §§pop();
            if(_loc8_ || param2)
            {
               §§push(§_-yD§);
               if(!(_loc9_ && _loc3_))
               {
                  §§push(_loc7_);
                  if(!_loc9_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc9_ && param1))
                        {
                           addr413:
                           §§push(0);
                           if(_loc9_ && this)
                           {
                              addr434:
                           }
                        }
                        else
                        {
                           addr471:
                           §§push(3);
                           if(_loc9_)
                           {
                           }
                        }
                        addr480:
                        switch(§§pop())
                        {
                           case 0:
                              _loc3_ = new b2DistanceJointDef();
                              if(_loc8_)
                              {
                                 _loc3_.collideConnected = this.§_-sm§;
                              }
                              while(true)
                              {
                                 _loc3_.§true § = 4;
                                 while(!(_loc9_ && param1))
                                 {
                                    _loc3_.§_-9r§ = 0.5;
                                    if(_loc8_ || this)
                                    {
                                       _loc3_.length = §_-00u§.§_-0g§(param1,param2);
                                       do
                                       {
                                          _loc3_.§_-bL§(param1.§_-SJ§(),param2.§_-SJ§(),param1.§_-SJ§().GetPosition(),param2.§_-SJ§().GetPosition());
                                       }
                                       while(_loc9_);
                                       
                                       return _loc3_;
                                    }
                                 }
                              }
                              break;
                           case 1:
                              (_loc4_ = new b2WeldJointDef()).collideConnected = this.§_-sm§;
                              if(!_loc9_)
                              {
                                 _loc4_.§_-bL§(param1.§_-SJ§(),param2.§_-SJ§(),param1.§_-SJ§().§_-Hi§());
                                 if(!(_loc9_ && param2))
                                 {
                                    return _loc4_;
                                 }
                              }
                           case 2:
                              (_loc5_ = new b2RevoluteJointDef()).collideConnected = this.§_-sm§;
                              if(_loc8_ || this)
                              {
                                 _loc5_.§_-bL§(param1.§_-SJ§(),param2.§_-SJ§(),param1.§_-SJ§().GetWorldPoint(new b2Vec2(this.mPoint1.x,this.mPoint1.y)));
                                 while(true)
                                 {
                                    _loc5_.§_-6W§ = this.§_-9H§;
                                    _loc5_.§_-1g§ = this.§_-Lq§;
                                    _loc5_.motorSpeed = this.§_-oE§;
                                    _loc5_.§_-KH§ = this.§_-Gl§;
                                    while(!(_loc9_ && param1))
                                    {
                                       _loc5_.§_-Ch§ = this.§_-Fd§;
                                       if(_loc9_ && param1)
                                       {
                                          continue;
                                       }
                                       §§goto(addr175);
                                    }
                                 }
                              }
                              else if(true)
                              {
                                 break;
                              }
                              addr175:
                              _loc5_.§_-dv§ = this.§_-gK§;
                              return _loc5_;
                           case 3:
                              break;
                           default:
                              return null;
                        }
                        (_loc6_ = new b2PrismaticJointDef()).collideConnected = this.§_-sm§;
                        addr479:
                        if(!_loc9_)
                        {
                           _loc6_.§_-bL§(param1.§_-SJ§(),param2.§_-SJ§(),param1.§_-SJ§().§_-Hi§(),new b2Vec2(this.§_-b7§,this.§_-0Bq§));
                           loop5:
                           while(true)
                           {
                              §§push(_loc6_);
                              if(_loc8_ || this)
                              {
                                 §§push(this.§_-jj§);
                                 if(!(_loc9_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       addr348:
                                       §§push(false);
                                       if(_loc8_)
                                       {
                                          addr351:
                                       }
                                    }
                                    else
                                    {
                                       §§push(this.§_-9H§);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                    §§pop().§_-6W§ = §§pop();
                                    _loc6_.§_-7p§ = this.§_-Fd§;
                                    while(true)
                                    {
                                       _loc6_.§_-1F§ = this.§_-Gl§;
                                       do
                                       {
                                          _loc6_.§_-1g§ = this.§_-Lq§;
                                       }
                                       while(_loc9_ && param2);
                                       
                                       continue loop5;
                                       addr303:
                                       _loc6_.motorSpeed = this.§_-oE§;
                                       if(_loc8_ || this)
                                       {
                                          return _loc6_;
                                          addr295:
                                       }
                                    }
                                    addr328:
                                 }
                                 §§goto(addr351);
                              }
                              §§goto(addr348);
                           }
                           addr379:
                        }
                        while(true)
                        {
                           _loc6_.§_-2E§ = this.§_-gK§;
                           if(_loc8_)
                           {
                              §§goto(addr303);
                           }
                           else
                           {
                              §§goto(addr379);
                           }
                        }
                        §§goto(addr295);
                        addr479:
                     }
                     else
                     {
                        §§push(§_-gY§);
                        if(!_loc9_)
                        {
                           §§push(_loc7_);
                           if(_loc8_)
                           {
                              addr428:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc9_)
                                 {
                                    §§push(1);
                                    if(_loc8_)
                                    {
                                       §§goto(addr434);
                                    }
                                    else
                                    {
                                       addr467:
                                    }
                                 }
                                 else
                                 {
                                    addr464:
                                    §§push(2);
                                    if(!_loc9_)
                                    {
                                       §§goto(addr467);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§_-N0§);
                                 if(!(_loc9_ && param1))
                                 {
                                    addr443:
                                    §§push(_loc7_);
                                    if(_loc8_)
                                    {
                                       addr456:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc9_ && this))
                                          {
                                             §§goto(addr464);
                                          }
                                          else
                                          {
                                             §§goto(addr471);
                                          }
                                       }
                                       else
                                       {
                                          addr469:
                                          §§push(§_-37§);
                                          §§push(_loc7_);
                                       }
                                       §§goto(addr471);
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr471);
                                    }
                                    else
                                    {
                                       §§goto(addr479);
                                       §§push(4);
                                    }
                                    §§goto(addr479);
                                 }
                                 §§goto(addr469);
                              }
                              §§goto(addr479);
                           }
                           §§goto(addr456);
                        }
                        §§goto(addr443);
                     }
                     §§goto(addr471);
                  }
                  §§goto(addr428);
               }
               §§goto(addr443);
            }
            §§goto(addr413);
         }
         §§goto(addr480);
      }
   }
}
