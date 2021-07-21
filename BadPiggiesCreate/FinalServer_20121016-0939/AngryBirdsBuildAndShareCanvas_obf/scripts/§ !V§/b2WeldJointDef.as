package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §+!H§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§!2§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§ !c§ = new b2Vec2();
               while(true)
               {
                  super();
                  while(_loc2_)
                  {
                     type = b2Joint.§>_§;
                     continue loop0;
                     if(_loc2_ || this)
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
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §@!<§ = param1;
            while(true)
            {
               §3j§ = param2;
               while(_loc5_)
               {
                  this.§!2§.SetV(§@!<§.GetLocalPoint(param3));
                  do
                  {
                     this.§ !c§.SetV(§3j§.GetLocalPoint(param3));
                     do
                     {
                        this.§+!H§ = §3j§.GetAngle() - §@!<§.GetAngle();
                     }
                     while(_loc4_ && param1);
                     
                  }
                  while(_loc4_);
                  
                  if(_loc5_ || param3)
                  {
                     return;
                     addr58:
                  }
               }
            }
         }
         §§goto(addr58);
      }
   }
}
