package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
       
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §+!H§:Number;
      
      public var §4!E§:Boolean;
      
      public var §@!U§:Number;
      
      public var §6!#§:Number;
      
      public var §7!S§:Boolean;
      
      public var motorSpeed:Number;
      
      public var §1a§:Number;
      
      public function b2RevoluteJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!2§ = new b2Vec2();
            while(true)
            {
               this.§ !c§ = new b2Vec2();
               loop1:
               while(true)
               {
                  super();
                  while(true)
                  {
                     type = b2Joint.e_revoluteJoint;
                     addr162:
                     while(true)
                     {
                        this.§!2§.Set(0,0);
                        continue loop1;
                     }
                     addr35:
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                     }
                  }
               }
               if(_loc1_ && this)
               {
                  continue;
               }
               this.§1a§ = 0;
               §§goto(addr80);
            }
         }
         while(true)
         {
            this.§+!H§ = 0;
            §§goto(addr133);
         }
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §@!<§ = param1;
         }
         do
         {
            §3j§ = param2;
            loop1:
            do
            {
               this.§!2§ = §@!<§.GetLocalPoint(param3);
               while(true)
               {
                  this.§ !c§ = §3j§.GetLocalPoint(param3);
                  while(!_loc4_)
                  {
                     this.§+!H§ = §3j§.GetAngle() - §@!<§.GetAngle();
                     if(_loc5_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            while(!(_loc5_ || param2));
            
         }
         while(_loc4_);
         
      }
   }
}
