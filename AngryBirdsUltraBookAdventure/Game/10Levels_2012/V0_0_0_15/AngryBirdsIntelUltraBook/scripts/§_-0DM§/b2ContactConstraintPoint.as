package §_-0DM§
{
   import §_-Yp§.b2Vec2;
   
   public class b2ContactConstraintPoint
   {
       
      
      public var localPoint:b2Vec2;
      
      public var §_-GG§:b2Vec2;
      
      public var §_-0G§:b2Vec2;
      
      public var normalImpulse:Number;
      
      public var tangentImpulse:Number;
      
      public var §_-Ts§:Number;
      
      public var §_-NX§:Number;
      
      public var §_-0CM§:Number;
      
      public var §_-Db§:Number;
      
      public function b2ContactConstraintPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.localPoint = new b2Vec2();
            while(true)
            {
               this.§_-GG§ = new b2Vec2();
               loop1:
               while(_loc2_)
               {
                  this.§_-0G§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     if(_loc2_)
                     {
                        if(!(_loc1_ && this))
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
         §§goto(addr62);
      }
   }
}
