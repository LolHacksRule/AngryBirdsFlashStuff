package §_-gE§
{
   import §_-03n§.b2Shape;
   import §_-Yp§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §_-TX§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §_-i2§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§_-TX§ = new b2Vec2();
            }
            addr88:
         }
         loop1:
         do
         {
            this.normal = new b2Vec2();
            while(!_loc1_)
            {
               this.id = new b2ContactID();
               while(_loc2_ || _loc2_)
               {
                  super();
                  if(_loc2_ || _loc2_)
                  {
                     continue loop1;
                  }
               }
            }
            §§goto(addr88);
         }
         while(!_loc2_);
         
      }
   }
}
