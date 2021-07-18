package §!4§
{
   import §6A§.b2Vec2;
   import §7q§.b2Shape;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §=R§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §8p§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§=R§ = new b2Vec2();
               while(_loc2_)
               {
                  while(_loc2_ || this)
                  {
                     this.id = new b2ContactID();
                     while(!_loc1_)
                     {
                        super();
                        if(_loc2_)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.normal = new b2Vec2();
            §§goto(addr58);
         }
      }
   }
}
