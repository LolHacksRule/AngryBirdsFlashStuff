package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var §;w§:Number;
      
      public var §3L§:Boolean;
      
      public var §"!0§:Number;
      
      public var § b§:Number;
      
      public var §;`§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §'Y§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@b§ = new b2Vec2();
            while(true)
            {
               this.§=i§ = new b2Vec2();
               addr147:
               while(true)
               {
                  super();
                  addr131:
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                  }
               }
            }
            addr152:
         }
         while(true)
         {
            this.§@b§.Set(0,0);
            loop4:
            while(true)
            {
               this.§=i§.Set(0,0);
               loop5:
               while(true)
               {
                  this.§;w§ = 0;
                  while(true)
                  {
                     this.§"!0§ = 0;
                     loop7:
                     while(true)
                     {
                        this.§ b§ = 0;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    this.§'Y§ = 0;
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          this.motorSpeed = 0;
                                          continue;
                                       }
                                       §§goto(addr152);
                                    }
                                 }
                                 break;
                              }
                              continue loop5;
                           }
                           continue loop7;
                        }
                        §§goto(addr147);
                     }
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        continue loop4;
                     }
                     if(_loc2_)
                     {
                        this.§3L§ = false;
                        §§goto(addr35);
                     }
                     §§goto(addr131);
                  }
               }
            }
         }
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §&]§ = param1;
            while(true)
            {
               §+0§ = param2;
               while(!_loc5_)
               {
                  while(_loc4_ || this)
                  {
                     this.§=i§ = §+0§.GetLocalPoint(param3);
                     while(_loc4_ || param2)
                     {
                        this.§;w§ = §+0§.GetAngle() - §&]§.GetAngle();
                        if(_loc4_ || param2)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§@b§ = §&]§.GetLocalPoint(param3);
            §§goto(addr69);
         }
      }
   }
}
