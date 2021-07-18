package § G§
{
   import §-!C§.b2Shape;
   import §9"§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §<l§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §9!J§:Number;
      
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
         }
         do
         {
            this.§<l§ = new b2Vec2();
            do
            {
               this.normal = new b2Vec2();
               do
               {
                  this.id = new b2ContactID();
                  do
                  {
                     super();
                  }
                  while(!(_loc1_ || _loc2_));
                  
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || _loc2_));
            
         }
         while(_loc2_);
         
      }
   }
}
