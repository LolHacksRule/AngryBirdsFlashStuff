package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2DistanceJointDef extends b2JointDef
   {
       
      
      public var §_-F6§:b2Vec2;
      
      public var §_-0Bf§:b2Vec2;
      
      public var length:Number;
      
      public var §true §:Number;
      
      public var §_-9r§:Number;
      
      public function b2DistanceJointDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-F6§ = new b2Vec2();
            while(true)
            {
               this.§_-0Bf§ = new b2Vec2();
               addr91:
               while(true)
               {
                  super();
                  addr85:
                  while(true)
                  {
                     type = b2Joint.§_-Mk§;
                     addr81:
                     while(true)
                     {
                        this.length = 1;
                     }
                  }
               }
            }
            addr96:
         }
         loop4:
         while(true)
         {
            this.§true § = 0;
            while(!_loc1_)
            {
               this.§_-9r§ = 0;
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  continue loop4;
               }
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     if(!_loc1_)
                     {
                        break loop4;
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr91);
               }
               §§goto(addr81);
            }
            §§goto(addr85);
         }
      }
      
      public function §_-bL§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param2)
         {
            §_-ZR§ = param1;
         }
         loop0:
         while(true)
         {
            §_-7b§ = param2;
            loop1:
            while(true)
            {
               addr43:
               while(true)
               {
                  this.§_-F6§.SetV(§_-ZR§.GetLocalPoint(param3));
                  while(_loc8_)
                  {
                     this.§_-0Bf§.SetV(§_-7b§.GetLocalPoint(param4));
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
   }
}
