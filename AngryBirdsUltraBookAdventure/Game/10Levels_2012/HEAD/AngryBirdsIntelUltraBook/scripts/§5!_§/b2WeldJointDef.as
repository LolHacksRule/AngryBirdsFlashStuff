package §5!_§
{
   import §1%§.b2Body;
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §'!<§:b2Vec2;
      
      public var §1!0§:b2Vec2;
      
      public var §5S§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'!<§ = new b2Vec2();
            while(true)
            {
               this.§1!0§ = new b2Vec2();
               while(!(_loc1_ && _loc1_))
               {
                  super();
                  while(_loc2_)
                  {
                     type = b2Joint.§-!X§;
                     do
                     {
                        this.§5S§ = 0;
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
      
      public function §3!a§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §7!K§ = param1;
            loop0:
            while(true)
            {
               §'P§ = param2;
               while(true)
               {
                  this.§'!<§.SetV(§7!K§.GetLocalPoint(param3));
                  loop2:
                  while(_loc5_)
                  {
                     this.§1!0§.SetV(§'P§.GetLocalPoint(param3));
                     while(!_loc4_)
                     {
                        this.§5S§ = §'P§.GetAngle() - §7!K§.GetAngle();
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
