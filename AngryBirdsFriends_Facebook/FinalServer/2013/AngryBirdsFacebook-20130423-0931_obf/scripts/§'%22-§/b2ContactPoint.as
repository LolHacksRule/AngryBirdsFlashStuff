package §'"-§
{
   import §!"3§.b2Shape;
   import §6!^§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §^;§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §#!9§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§^;§ = new b2Vec2();
               loop1:
               while(!(_loc2_ && this))
               {
                  while(true)
                  {
                     this.normal = new b2Vec2();
                     do
                     {
                        this.id = new b2ContactID();
                        do
                        {
                           super();
                        }
                        while(_loc2_ && this);
                        
                     }
                     while(!_loc1_);
                     
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr82);
      }
   }
}
