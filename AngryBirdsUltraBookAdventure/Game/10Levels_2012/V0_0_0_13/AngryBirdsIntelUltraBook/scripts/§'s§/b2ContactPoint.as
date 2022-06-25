package §'s§
{
   import §#!"§.b2Shape;
   import §&L§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §&Q§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §?g§:Number;
      
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
               this.§&Q§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.normal = new b2Vec2();
                  while(true)
                  {
                     this.id = new b2ContactID();
                     loop3:
                     while(!(_loc1_ && _loc1_))
                     {
                        continue loop1;
                        while(true)
                        {
                           super();
                           if(!(_loc1_ && _loc2_))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
   }
}
