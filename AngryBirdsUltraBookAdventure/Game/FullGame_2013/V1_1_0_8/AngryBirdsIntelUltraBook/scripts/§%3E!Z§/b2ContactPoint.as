package §>!Z§
{
   import §&H§.b2Vec2;
   import §3b§.b2Shape;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §<0§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §>S§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§<0§ = new b2Vec2();
               loop1:
               while(_loc1_ || this)
               {
                  this.normal = new b2Vec2();
                  while(true)
                  {
                     this.id = new b2ContactID();
                     loop3:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           super();
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
   }
}
