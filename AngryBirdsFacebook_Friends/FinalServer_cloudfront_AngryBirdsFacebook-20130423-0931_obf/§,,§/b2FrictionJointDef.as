package §,,§
{
   import §,"[§.b2internal;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §-!,§:b2Vec2;
      
      public var §["9§:b2Vec2;
      
      public var §`"M§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-!,§ = new b2Vec2();
         }
         while(true)
         {
            this.§["9§ = new b2Vec2();
            loop1:
            while(_loc2_ || _loc2_)
            {
               super();
               do
               {
                  type = b2Joint.§=!_§;
                  while(_loc2_ || this)
                  {
                     this.§`"M§ = 0;
                     do
                     {
                        this.maxTorque = 0;
                     }
                     while(!(_loc2_ || this));
                     
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     §§goto(addr52);
                  }
                  continue loop1;
               }
               while(_loc1_);
               
               return;
            }
         }
      }
      
      public function §6!Q§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §`y§ = param1;
         }
         while(true)
         {
            §8!7§ = param2;
            while(_loc5_)
            {
               this.§-!,§.SetV(§`y§.GetLocalPoint(param3));
               do
               {
                  this.§["9§.SetV(§8!7§.GetLocalPoint(param3));
               }
               while(_loc4_);
               
               if(_loc5_ || param1)
               {
                  return;
               }
            }
         }
      }
   }
}
