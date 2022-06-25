package §9!"§
{
   import §7!u§.b2internal;
   import §>H§.b2Vec2;
   import §`w§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §<?§:b2Vec2;
      
      public var §%!e§:b2Vec2;
      
      public var §`z§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§<?§ = new b2Vec2();
            while(true)
            {
               this.§%!e§ = new b2Vec2();
               addr72:
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               this.§`z§ = 0;
               loop4:
               while(_loc2_)
               {
                  this.maxTorque = 0;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  addr30:
                  if(_loc2_ || this)
                  {
                     return;
                  }
                  while(_loc2_)
                  {
                     §§goto(addr72);
                     §§goto(addr30);
                  }
                  while(true)
                  {
                     super();
                     break loop4;
                  }
                  addr70:
                  addr89:
               }
               while(true)
               {
                  type = b2Joint.§=!d§;
                  §§goto(addr70);
                  §§goto(addr52);
               }
               addr52:
            }
         }
         §§goto(addr89);
      }
      
      public function §%%§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §3x§ = param1;
            while(true)
            {
               §8P§ = param2;
               while(true)
               {
                  this.§<?§.SetV(§3x§.GetLocalPoint(param3));
                  §§goto(addr80);
               }
            }
         }
         addr80:
         while(true)
         {
            this.§%!e§.SetV(§8P§.GetLocalPoint(param3));
            if(!(_loc4_ && param2))
            {
               if(!(_loc4_ && param2))
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr72:
      }
   }
}
