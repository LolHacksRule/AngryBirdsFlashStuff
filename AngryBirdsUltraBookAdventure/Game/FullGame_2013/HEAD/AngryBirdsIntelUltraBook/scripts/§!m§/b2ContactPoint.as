package §!m§
{
   import §0!3§.b2Shape;
   import §>!8§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §1!K§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §?0§:Number;
      
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
         }
         loop0:
         while(true)
         {
            this.§1!K§ = new b2Vec2();
            loop1:
            while(true)
            {
               this.normal = new b2Vec2();
               loop2:
               while(_loc2_)
               {
                  this.id = new b2ContactID();
                  while(_loc2_)
                  {
                     super();
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
   }
}
