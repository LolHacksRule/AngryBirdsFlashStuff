package §^9§
{
   import §"y§.b2Shape;
   import §6Z§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §!!j§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §-!&§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§!!j§ = new b2Vec2();
               while(!_loc1_)
               {
                  this.normal = new b2Vec2();
                  while(true)
                  {
                     this.id = new b2ContactID();
                     §§goto(addr54);
                  }
               }
            }
         }
         addr54:
         while(true)
         {
            super();
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop1;
               }
               continue loop2;
            }
         }
      }
   }
}
