package §%t§
{
   import §&L§.b2Vec2;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §`!V§:b2Vec2;
      
      public var §6$§:b2Vec2;
      
      public var §]!4§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`!V§ = new b2Vec2();
            while(true)
            {
               this.§6$§ = new b2Vec2();
               while(!(_loc1_ && _loc1_))
               {
                  super();
                  while(_loc2_)
                  {
                     type = b2Joint.§3n§;
                     do
                     {
                        this.§]!4§ = 0;
                     }
                     while(!_loc2_);
                     
                     if(_loc2_)
                     {
                        return;
                        addr52:
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §;o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §^!G§ = param1;
            loop0:
            while(true)
            {
               §-z§ = param2;
               while(true)
               {
                  this.§`!V§.SetV(§^!G§.GetLocalPoint(param3));
                  loop2:
                  while(_loc5_)
                  {
                     this.§6$§.SetV(§-z§.GetLocalPoint(param3));
                     while(!_loc4_)
                     {
                        this.§]!4§ = §-z§.GetAngle() - §^!G§.GetAngle();
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              return;
                              addr48:
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr48);
      }
   }
}
