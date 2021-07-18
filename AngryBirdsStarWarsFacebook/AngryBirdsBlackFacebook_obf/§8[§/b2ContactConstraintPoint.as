package §8[§
{
   import §[R§.b2Vec2;
   
   public class b2ContactConstraintPoint
   {
       
      
      public var localPoint:b2Vec2;
      
      public var §!Y§:b2Vec2;
      
      public var §&"k§:b2Vec2;
      
      public var normalImpulse:Number;
      
      public var tangentImpulse:Number;
      
      public var §&!M§:Number;
      
      public var §+!5§:Number;
      
      public var §>#[§:Number;
      
      public var §2!4§:Number;
      
      public function b2ContactConstraintPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.localPoint = new b2Vec2();
            while(true)
            {
               this.§!Y§ = new b2Vec2();
               while(_loc2_)
               {
                  this.§&"k§ = new b2Vec2();
                  do
                  {
                     super();
                  }
                  while(!(_loc2_ || _loc1_));
                  
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
   }
}
