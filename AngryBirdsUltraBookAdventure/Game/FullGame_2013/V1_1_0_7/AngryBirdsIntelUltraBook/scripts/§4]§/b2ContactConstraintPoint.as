package §4]§
{
   import §&H§.b2Vec2;
   
   public class b2ContactConstraintPoint
   {
       
      
      public var localPoint:b2Vec2;
      
      public var §&!c§:b2Vec2;
      
      public var §]!0§:b2Vec2;
      
      public var normalImpulse:Number;
      
      public var tangentImpulse:Number;
      
      public var §>!o§:Number;
      
      public var §2`§:Number;
      
      public var §>V§:Number;
      
      public var §@!C§:Number;
      
      public function b2ContactConstraintPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.localPoint = new b2Vec2();
            while(true)
            {
               this.§&!c§ = new b2Vec2();
               §§goto(addr85);
            }
         }
         addr85:
         while(true)
         {
            this.§]!0§ = new b2Vec2();
            do
            {
               super();
            }
            while(_loc1_ && _loc2_);
            
            if(_loc2_ || this)
            {
               if(!(_loc1_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
