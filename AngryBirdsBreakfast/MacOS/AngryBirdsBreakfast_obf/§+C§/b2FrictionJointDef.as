package §+C§
{
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §6Z§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §0O§:b2Vec2;
      
      public var § @§:b2Vec2;
      
      public var §&l§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0O§ = new b2Vec2();
            while(true)
            {
               this.§ @§ = new b2Vec2();
            }
            addr98:
         }
         loop1:
         do
         {
            super();
            while(true)
            {
               type = b2Joint.§]1§;
               loop3:
               for(; _loc1_ || _loc1_; if(!(_loc2_ && this))
               {
                  continue loop1;
               })
               {
                  this.§&l§ = 0;
                  while(_loc1_)
                  {
                     this.maxTorque = 0;
                     if(!_loc2_)
                     {
                        continue loop3;
                     }
                  }
                  §§goto(addr98);
               }
            }
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §",§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §'!n§ = param1;
            while(true)
            {
               § 5§ = param2;
               loop1:
               while(!_loc5_)
               {
                  this.§0O§.SetV(§'!n§.GetLocalPoint(param3));
                  while(true)
                  {
                     this.§ @§.SetV(§ 5§.GetLocalPoint(param3));
                     if(_loc4_ || param3)
                     {
                        if(_loc4_ || param2)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
   }
}
