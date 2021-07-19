package §;!#§
{
   import § o§.b2Body;
   import §"0§.b2internal;
   import §6!H§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §!!U§:b2Vec2;
      
      public var §"!'§:b2Vec2;
      
      public var §4d§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§!!U§ = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§"!'§ = new b2Vec2();
            while(true)
            {
               super();
               while(!(_loc1_ && this))
               {
                  type = b2Joint.§6!8§;
                  continue loop0;
                  addr42:
                  if(!(_loc1_ && this))
                  {
                     this.maxTorque = 0;
                     addr59:
                     if(_loc2_)
                     {
                        return;
                        addr40:
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        §§goto(addr42);
                        §§goto(addr59);
                     }
                  }
               }
            }
         }
      }
      
      public function §#!O§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §-'§ = param1;
            loop0:
            while(true)
            {
               §<!L§ = param2;
               while(true)
               {
                  this.§!!U§.SetV(§-'§.GetLocalPoint(param3));
                  loop2:
                  while(_loc5_ || this)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§"!'§.SetV(§<!L§.GetLocalPoint(param3));
                        if(!(_loc4_ && param1))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr85);
      }
   }
}
