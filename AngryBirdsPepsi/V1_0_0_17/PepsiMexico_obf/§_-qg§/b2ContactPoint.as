package §_-qg§
{
   import §_-Ja§.b2Vec2;
   import §_-Kt§.b2Shape;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §_-iJ§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-sE§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.position = new b2Vec2();
            if(_loc1_ || this)
            {
               this.§_-iJ§ = new b2Vec2();
               if(!(_loc2_ && _loc2_))
               {
                  addr49:
                  this.normal = new b2Vec2();
                  if(!(_loc2_ && _loc2_))
                  {
                     this.id = new b2ContactID();
                     if(_loc2_)
                     {
                     }
                     §§goto(addr75);
                  }
               }
               super();
            }
            addr75:
            return;
         }
         §§goto(addr49);
      }
   }
}
