package §23§
{
   import §@!E§.b2Vec2;
   
   public class b2ContactConstraintPoint
   {
       
      
      public var localPoint:b2Vec2;
      
      public var §8!1§:b2Vec2;
      
      public var §3=§:b2Vec2;
      
      public var normalImpulse:Number;
      
      public var tangentImpulse:Number;
      
      public var §3!e§:Number;
      
      public var §1!u§:Number;
      
      public var §-!v§:Number;
      
      public var §"%§:Number;
      
      public function b2ContactConstraintPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.localPoint = new b2Vec2();
            loop0:
            while(true)
            {
               this.§8!1§ = new b2Vec2();
               while(true)
               {
                  this.§3=§ = new b2Vec2();
                  loop2:
                  while(!(_loc1_ && _loc2_))
                  {
                     while(true)
                     {
                        super();
                        if(_loc2_ || _loc1_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr64);
      }
   }
}
