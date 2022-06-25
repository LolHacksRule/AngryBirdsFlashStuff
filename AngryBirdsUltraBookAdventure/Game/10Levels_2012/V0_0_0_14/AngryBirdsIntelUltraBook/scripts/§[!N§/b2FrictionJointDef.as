package §[!N§
{
   import § D§.b2Body;
   import §8>§.b2Vec2;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §9!9§:b2Vec2;
      
      public var §^G§:b2Vec2;
      
      public var §4!G§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9!9§ = new b2Vec2();
            while(true)
            {
               this.§^G§ = new b2Vec2();
               while(!_loc2_)
               {
                  super();
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     type = b2Joint.§8b§;
                     while(true)
                     {
                        this.§4!G§ = 0;
                        do
                        {
                           this.maxTorque = 0;
                        }
                        while(!(_loc1_ || _loc1_));
                        
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §7R§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §-!O§ = param1;
            loop0:
            while(true)
            {
               §3!u§ = param2;
               while(true)
               {
                  this.§9!9§.SetV(§-!O§.GetLocalPoint(param3));
                  addr60:
                  while(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§^G§.SetV(§3!u§.GetLocalPoint(param3));
            if(_loc4_)
            {
               break;
            }
            §§goto(addr60);
         }
      }
   }
}
