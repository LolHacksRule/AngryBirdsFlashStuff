package §3"5§
{
   import §4!$§.b2Shape;
   import §[R§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §7f§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §!!2§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.position = new b2Vec2();
            loop0:
            while(true)
            {
               this.§7f§ = new b2Vec2();
               while(true)
               {
                  this.normal = new b2Vec2();
                  continue loop0;
                  addr34:
                  if(!(_loc1_ && this))
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         while(true)
         {
            this.id = new b2ContactID();
            §§goto(addr57);
         }
         §§goto(addr51);
      }
   }
}
