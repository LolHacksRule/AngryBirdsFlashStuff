package §8Y§
{
   import §0!G§.b2Vec2;
   
   public class b2ContactConstraintPoint
   {
       
      
      public var localPoint:b2Vec2;
      
      public var §->§:b2Vec2;
      
      public var §2!_§:b2Vec2;
      
      public var normalImpulse:Number;
      
      public var tangentImpulse:Number;
      
      public var §@!T§:Number;
      
      public var §4!B§:Number;
      
      public var §^!6§:Number;
      
      public var §?K§:Number;
      
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
               this.§->§ = new b2Vec2();
               loop1:
               do
               {
                  this.§2!_§ = new b2Vec2();
                  while(!_loc1_)
                  {
                     super();
                     if(!_loc1_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc1_);
               
            }
         }
      }
   }
}
