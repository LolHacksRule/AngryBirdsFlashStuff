package §55§
{
   import §#]§.b2Vec2;
   import §<!`§.b2Shape;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §[! §:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §1O§:Number;
      
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
         while(true)
         {
            this.§[! § = new b2Vec2();
            while(true)
            {
               this.normal = new b2Vec2();
               while(!_loc2_)
               {
                  this.id = new b2ContactID();
                  while(_loc1_)
                  {
                     if(_loc1_)
                     {
                        super();
                        if(_loc1_)
                        {
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
   }
}
