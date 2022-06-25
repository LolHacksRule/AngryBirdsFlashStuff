package §8w§
{
   import §,C§.b2Shape;
   import §;%§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §2!$§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §1k§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§2!$§ = new b2Vec2();
            }
            addr88:
         }
         loop1:
         while(true)
         {
            this.normal = new b2Vec2();
            loop2:
            while(true)
            {
               this.id = new b2ContactID();
               while(true)
               {
                  if(_loc2_)
                  {
                     continue loop1;
                  }
                  continue loop2;
                  addr71:
                  super();
                  if(!_loc1_)
                  {
                     return;
                  }
               }
               continue loop1;
            }
         }
      }
   }
}
