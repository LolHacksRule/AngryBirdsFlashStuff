package §,!0§
{
   import §"J§.b2Body;
   import §<!a§.b2Vec2;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §3!&§:b2Vec2;
      
      public var §2!P§:b2Vec2;
      
      public var §&>§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3!&§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§2!P§ = new b2Vec2();
               while(true)
               {
                  super();
                  addr67:
                  addr48:
                  while(true)
                  {
                     type = b2Joint.§;";§;
                  }
                  if(_loc1_ || _loc1_)
                  {
                     if(_loc1_)
                     {
                        this.maxTorque = 0;
                        if(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              §§goto(addr67);
                           }
                           return;
                           addr31:
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr48);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§&>§ = 0;
                                 continue loop4;
                              }
                              §§goto(addr31);
                              addr63:
                           }
                        }
                        addr57:
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §&!§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            § !T§ = param1;
            while(true)
            {
               §import§ = param2;
               loop1:
               while(_loc4_)
               {
                  this.§3!&§.SetV(§ !T§.GetLocalPoint(param3));
                  while(true)
                  {
                     this.§2!P§.SetV(§import§.GetLocalPoint(param3));
                     if(!(_loc5_ && param2))
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
   }
}
