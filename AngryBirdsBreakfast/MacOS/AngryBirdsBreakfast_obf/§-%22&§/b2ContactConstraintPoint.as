package §-"&§
{
   import §6Z§.b2Vec2;
   
   public class b2ContactConstraintPoint
   {
       
      
      public var localPoint:b2Vec2;
      
      public var §@B§:b2Vec2;
      
      public var §^6§:b2Vec2;
      
      public var normalImpulse:Number;
      
      public var tangentImpulse:Number;
      
      public var §?!!§:Number;
      
      public var §9!,§:Number;
      
      public var §3Y§:Number;
      
      public var §5h§:Number;
      
      public function b2ContactConstraintPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.localPoint = new b2Vec2();
         }
         while(true)
         {
            this.§@B§ = new b2Vec2();
            while(!_loc1_)
            {
               this.§^6§ = new b2Vec2();
               do
               {
                  super();
               }
               while(!(_loc2_ || this));
               
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
   }
}
