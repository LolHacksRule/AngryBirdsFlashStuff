package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2FrictionJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var §_-oX§:Number;
      
      public var maxTorque:Number;
      
      public function b2FrictionJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§_-F6§ = new b2Vec2();
            while(true)
            {
               this.§_-0Bf§ = new b2Vec2();
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        type = b2Joint.§_-o4§;
                        while(true)
                        {
                           this.§_-oX§ = 0;
                           while(_loc2_)
                           {
                              continue loop3;
                              this.maxTorque = 0;
                              if(_loc2_ || _loc2_)
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            §_-ZR§ = param1;
         }
         do
         {
            §_-7b§ = param2;
            do
            {
               this.§_-F6§.SetV(§_-ZR§.GetLocalPoint(param3));
               do
               {
                  this.§_-0Bf§.SetV(§_-7b§.GetLocalPoint(param3));
               }
               while(!(_loc4_ || param3));
               
            }
            while(!(_loc4_ || param2));
            
         }
         while(_loc5_);
         
      }
   }
}
