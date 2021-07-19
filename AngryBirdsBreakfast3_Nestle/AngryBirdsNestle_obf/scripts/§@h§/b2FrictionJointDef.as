package §@h§
{
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §@!E§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §8D§:b2Vec2;
      
      public var §@"$§:b2Vec2;
      
      public var §6g§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§8D§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§@"$§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     type = b2Joint.§-!N§;
                     loop3:
                     while(_loc2_)
                     {
                        this.§6g§ = 0;
                        while(true)
                        {
                           this.maxTorque = 0;
                           if(!_loc1_)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §6R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §9!w§ = param1;
            while(true)
            {
               §>!W§ = param2;
               while(!_loc5_)
               {
                  this.§8D§.SetV(§9!w§.GetLocalPoint(param3));
                  do
                  {
                     this.§@"$§.SetV(§>!W§.GetLocalPoint(param3));
                  }
                  while(!(_loc4_ || param3));
                  
                  if(_loc4_)
                  {
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
   }
}
