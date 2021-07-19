package §9"§
{
   import §&U§.b2Shape;
   import §0!G§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §>!W§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §,P§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§>!W§ = new b2Vec2();
               loop1:
               do
               {
                  this.normal = new b2Vec2();
                  while(_loc2_)
                  {
                     this.id = new b2ContactID();
                     while(_loc2_)
                     {
                        super();
                        if(!(_loc1_ && _loc2_))
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               while(!(_loc2_ || this));
               
            }
         }
      }
   }
}
