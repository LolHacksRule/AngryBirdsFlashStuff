package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2PrismaticJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §@`§:b2Vec2;
      
      public var §<!b§:Number;
      
      public var §+!<§:Boolean;
      
      public var §9"'§:Number;
      
      public var §<"%§:Number;
      
      public var §[!W§:Boolean;
      
      public var §8!B§:Number;
      
      public var motorSpeed:Number;
      
      public function b2PrismaticJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§0O§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ @§ = new b2Vec2();
               addr150:
               while(true)
               {
                  this.§@`§ = new b2Vec2();
                  addr134:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.§8x§;
                        addr124:
                        while(true)
                        {
                           this.§@`§.Set(1,0);
                           addr109:
                           while(!_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §'!n§ = param1;
         }
         while(true)
         {
            § 5§ = param2;
            loop1:
            for(; !_loc6_; loop3:
            while(_loc5_ || this)
            {
               this.§@`§ = §'!n§.GetLocalVector(param4);
               while(_loc5_)
               {
                  this.§<!b§ = § 5§.GetAngle() - §'!n§.GetAngle();
                  if(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        return;
                     }
                     continue loop3;
                  }
               }
               §§goto(addr75);
            })
            {
               this.§0O§ = §'!n§.GetLocalPoint(param3);
               while(true)
               {
                  this.§ @§ = § 5§.GetLocalPoint(param3);
                  continue loop1;
               }
            }
         }
      }
   }
}
