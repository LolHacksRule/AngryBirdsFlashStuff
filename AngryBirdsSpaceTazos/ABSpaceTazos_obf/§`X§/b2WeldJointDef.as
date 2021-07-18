package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §+!L§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§!8§ = new b2Vec2();
            do
            {
               this.§@W§ = new b2Vec2();
               loop1:
               do
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.§@"$§;
                     while(!_loc2_)
                     {
                        this.§+!L§ = 0;
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc2_ && this);
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §+,§ = param1;
            while(true)
            {
               §"R§ = param2;
               loop1:
               while(_loc4_ || param2)
               {
                  this.§!8§.SetV(§+,§.GetLocalPoint(param3));
                  loop2:
                  do
                  {
                     this.§@W§.SetV(§"R§.GetLocalPoint(param3));
                     while(_loc4_)
                     {
                        this.§+!L§ = §"R§.GetAngle() - §+,§.GetAngle();
                        if(_loc4_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc5_ && this);
                  
                  return;
               }
            }
         }
         §§goto(addr68);
      }
   }
}
