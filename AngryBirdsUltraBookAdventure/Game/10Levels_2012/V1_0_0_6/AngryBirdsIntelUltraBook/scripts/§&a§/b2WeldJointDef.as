package §&a§
{
   import §#V§.b2Body;
   import §3!m§.b2internal;
   import §;%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §4!%§:b2Vec2;
      
      public var §=!I§:b2Vec2;
      
      public var §<?§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§4!%§ = new b2Vec2();
            while(true)
            {
               this.§=!I§ = new b2Vec2();
               while(!(_loc2_ && this))
               {
                  super();
                  loop2:
                  for(; _loc1_; while(_loc1_ || _loc2_)
                  {
                     this.§<?§ = 0;
                     if(!_loc2_)
                     {
                        return;
                     }
                  })
                  {
                     while(true)
                     {
                        type = b2Joint.§@!>§;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §'K§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §0w§ = param1;
            loop0:
            while(true)
            {
               §^2§ = param2;
               while(true)
               {
                  this.§4!%§.SetV(§0w§.GetLocalPoint(param3));
                  while(!_loc4_)
                  {
                     this.§=!I§.SetV(§^2§.GetLocalPoint(param3));
                     while(!(_loc4_ && param3))
                     {
                        continue loop0;
                        this.§<?§ = §^2§.GetAngle() - §0w§.GetAngle();
                        if(!_loc4_)
                        {
                           return;
                           addr49:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
   }
}
