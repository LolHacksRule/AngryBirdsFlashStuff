package §`X§
{
   import §'!&§.b2Body;
   import §9t§.b2Vec2;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §!8§:b2Vec2;
      
      public var §@W§:b2Vec2;
      
      public var §1^§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§!8§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.§@W§ = new b2Vec2();
               while(true)
               {
                  super();
                  addr70:
                  while(!(_loc2_ && this))
                  {
                     type = b2Joint.§+_§;
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public function §>`§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §+,§ = param1;
            loop0:
            while(true)
            {
               §"R§ = param2;
               loop1:
               while(true)
               {
                  this.§!8§.SetV(§+,§.GetLocalPoint(param3));
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§@W§.SetV(§"R§.GetLocalPoint(param3));
                        if(_loc4_ || this)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr74);
      }
   }
}
