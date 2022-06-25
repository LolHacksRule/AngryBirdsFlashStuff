package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §-!Y§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§<?§ = new b2Vec2();
         }
         do
         {
            this.§%!e§ = new b2Vec2();
            do
            {
               super();
               do
               {
                  type = b2Joint.§]!n§;
                  do
                  {
                     this.§-!Y§ = 0;
                  }
                  while(!_loc2_);
                  
               }
               while(!_loc2_);
               
            }
            while(_loc1_);
            
         }
         while(_loc1_);
         
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §3x§ = param1;
            while(true)
            {
               §8P§ = param2;
               loop1:
               for(; _loc4_ || param3; while(!(_loc5_ && this))
               {
                  this.§%!e§.SetV(§8P§.GetLocalPoint(param3));
                  while(!_loc5_)
                  {
                     this.§-!Y§ = §8P§.GetAngle() - §3x§.GetAngle();
                     if(_loc4_ || param3)
                     {
                        return;
                     }
                  }
               })
               {
                  while(true)
                  {
                     this.§<?§.SetV(§3x§.GetLocalPoint(param3));
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr95);
      }
   }
}
