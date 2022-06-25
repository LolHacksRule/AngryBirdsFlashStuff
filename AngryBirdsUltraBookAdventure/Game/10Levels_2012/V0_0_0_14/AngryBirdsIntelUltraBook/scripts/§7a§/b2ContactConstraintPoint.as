package §7a§
{
   import §8>§.b2Vec2;
   
   public class b2ContactConstraintPoint
   {
       
      
      public var localPoint:b2Vec2;
      
      public var §7!D§:b2Vec2;
      
      public var §`A§:b2Vec2;
      
      public var normalImpulse:Number;
      
      public var tangentImpulse:Number;
      
      public var §>!H§:Number;
      
      public var §^&§:Number;
      
      public var §4!2§:Number;
      
      public var § !R§:Number;
      
      public function b2ContactConstraintPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.localPoint = new b2Vec2();
            while(true)
            {
               this.§7!D§ = new b2Vec2();
               loop1:
               while(!_loc2_)
               {
                  this.§`A§ = new b2Vec2();
                  while(true)
                  {
                     super();
                     if(!(_loc2_ && this))
                     {
                        if(_loc1_ || this)
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
         §§goto(addr66);
      }
   }
}
