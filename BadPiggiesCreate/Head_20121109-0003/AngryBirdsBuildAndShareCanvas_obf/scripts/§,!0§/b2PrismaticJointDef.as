package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var §>!'§:b2Vec2;
      
      public var § "2§:Number;
      
      public var §2<§:Boolean;
      
      public var §?"'§:Number;
      
      public var §-!§:Number;
      
      public var §#a§:Boolean;
      
      public var §<!S§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3!&§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§2!P§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.§>!'§ = new b2Vec2();
                  addr150:
                  while(true)
                  {
                     super();
                     addr144:
                     while(true)
                     {
                        type = b2Joint.§'"4§;
                        continue loop1;
                     }
                  }
               }
               loop10:
               while(true)
               {
                  if(_loc1_ && _loc2_)
                  {
                     continue loop0;
                  }
                  this.§<!S§ = 0;
                  while(_loc2_)
                  {
                     this.motorSpeed = 0;
                     if(!_loc1_)
                     {
                        continue loop10;
                     }
                  }
                  §§goto(addr144);
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            § !T§ = param1;
            while(true)
            {
               §import§ = param2;
               loop1:
               for(; !(_loc5_ && param2); while(!(_loc5_ && param1))
               {
                  this.§ "2§ = §import§.GetAngle() - § !T§.GetAngle();
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr39);
               })
               {
                  this.§3!&§ = § !T§.GetLocalPoint(param3);
                  loop2:
                  while(true)
                  {
                     this.§2!P§ = §import§.GetLocalPoint(param3);
                     do
                     {
                        if(_loc6_ || param2)
                        {
                           this.§>!'§ = § !T§.GetLocalVector(param4);
                           continue loop1;
                        }
                        continue loop2;
                     }
                     while(!_loc6_);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
   }
}
