package §3c§
{
   import §,Z§.b2Shape;
   import §9t§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §#!G§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §6r§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.position = new b2Vec2();
         }
         loop0:
         do
         {
            this.§#!G§ = new b2Vec2();
            loop1:
            while(true)
            {
               this.normal = new b2Vec2();
               loop2:
               do
               {
                  this.id = new b2ContactID();
                  while(_loc1_)
                  {
                     super();
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(!(_loc1_ || _loc1_));
               
               continue loop0;
            }
         }
         while(!(_loc1_ || _loc2_));
         
      }
   }
}
