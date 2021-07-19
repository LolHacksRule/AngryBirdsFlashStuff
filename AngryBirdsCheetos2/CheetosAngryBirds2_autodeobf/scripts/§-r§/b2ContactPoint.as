package §-r§
{
   import §6!H§.b2Vec2;
   import §]!S§.b2Shape;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §[Z§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §8c§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§[Z§ = new b2Vec2();
               loop1:
               while(true)
               {
                  this.normal = new b2Vec2();
                  while(true)
                  {
                     this.id = new b2ContactID();
                     loop3:
                     while(_loc1_ || _loc2_)
                     {
                        if(_loc2_)
                        {
                           continue loop1;
                           while(true)
                           {
                              super();
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                        }
                        continue loop0;
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
   }
}
