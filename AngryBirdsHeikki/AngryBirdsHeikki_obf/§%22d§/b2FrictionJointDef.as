package §"d§
{
   import §3!R§.b2Body;
   import §6A§.b2Vec2;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §@b§:b2Vec2;
      
      public var §=i§:b2Vec2;
      
      public var § N§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§@b§ = new b2Vec2();
            while(true)
            {
               this.§=i§ = new b2Vec2();
               loop1:
               for(; _loc2_ || this; if(_loc1_ && this)
               {
                  continue;
               },this.§ N§ = 0,do
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr58);
               }
               while(this.maxTorque = 0, _loc1_);
               ,return,addr35:)
               {
                  super();
                  loop2:
                  while(true)
                  {
                     type = b2Joint.§#F§;
                     addr58:
                     while(true)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           continue loop1;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function §';§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §&]§ = param1;
         }
         while(true)
         {
            §+0§ = param2;
            while(!(_loc5_ && param3))
            {
               this.§@b§.SetV(§&]§.GetLocalPoint(param3));
               while(_loc4_)
               {
                  this.§=i§.SetV(§+0§.GetLocalPoint(param3));
                  if(_loc4_)
                  {
                     return;
                  }
               }
            }
         }
      }
   }
}
