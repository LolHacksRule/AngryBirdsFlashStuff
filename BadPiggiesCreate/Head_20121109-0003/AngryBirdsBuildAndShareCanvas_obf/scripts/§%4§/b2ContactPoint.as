package §%4§
{
   import §2k§.b2Shape;
   import §<!a§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §1u§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §]T§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.position = new b2Vec2();
            while(true)
            {
               this.§1u§ = new b2Vec2();
               while(_loc2_)
               {
                  this.normal = new b2Vec2();
                  addr52:
                  if(_loc2_ || _loc2_)
                  {
                     super();
                     addr59:
                     if(_loc1_ && _loc1_)
                     {
                        while(!_loc1_)
                        {
                           §§goto(addr52);
                           §§goto(addr59);
                        }
                        while(true)
                        {
                           this.id = new b2ContactID();
                           §§goto(addr50);
                        }
                        addr50:
                        addr65:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr65);
      }
   }
}
