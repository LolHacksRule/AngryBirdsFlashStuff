package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §7!L§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§8D§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§@"$§ = new b2Vec2();
               while(true)
               {
                  super();
                  while(_loc1_)
                  {
                     while(!(_loc2_ && _loc1_))
                     {
                        this.§7!L§ = 0;
                        if(_loc1_)
                        {
                           if(_loc1_)
                           {
                              return;
                              addr46:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            type = b2Joint.§?!m§;
            §§goto(addr52);
         }
         §§goto(addr46);
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §9!w§ = param1;
            loop0:
            while(true)
            {
               §>!W§ = param2;
               while(true)
               {
                  this.§8D§.SetV(§9!w§.GetLocalPoint(param3));
                  loop2:
                  while(!_loc4_)
                  {
                     while(true)
                     {
                        this.§@"$§.SetV(§>!W§.GetLocalPoint(param3));
                        do
                        {
                           this.§7!L§ = §>!W§.GetAngle() - §9!w§.GetAngle();
                        }
                        while(_loc4_);
                        
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
   }
}
