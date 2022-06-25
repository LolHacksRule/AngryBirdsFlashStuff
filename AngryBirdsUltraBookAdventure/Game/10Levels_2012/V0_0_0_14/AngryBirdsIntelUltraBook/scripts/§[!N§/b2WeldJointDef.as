package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2WeldJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §1!@§:Number;
      
      public function b2WeldJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9!9§ = new b2Vec2();
            while(true)
            {
               this.§^G§ = new b2Vec2();
            }
            addr86:
         }
         loop1:
         do
         {
            super();
            while(_loc1_)
            {
               type = b2Joint.§2"§;
               while(!(_loc2_ && this))
               {
                  this.§1!@§ = 0;
                  if(_loc1_ || this)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr86);
         }
         while(_loc2_);
         
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §-!O§ = param1;
            while(true)
            {
               §3!u§ = param2;
               while(_loc5_)
               {
                  this.§9!9§.SetV(§-!O§.GetLocalPoint(param3));
                  while(_loc5_ || param1)
                  {
                     this.§^G§.SetV(§3!u§.GetLocalPoint(param3));
                     do
                     {
                        this.§1!@§ = §3!u§.GetAngle() - §-!O§.GetAngle();
                     }
                     while(!(_loc5_ || param1));
                     
                     if(!(_loc4_ && param3))
                     {
                        return;
                        addr61:
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
   }
}
