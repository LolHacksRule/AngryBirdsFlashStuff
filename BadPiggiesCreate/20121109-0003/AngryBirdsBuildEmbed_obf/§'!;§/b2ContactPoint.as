package §'!;§
{
   import §#b§.b2Shape;
   import §<!B§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §%!Z§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §[!n§:Number;
      
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
            if(_loc2_ || this)
            {
               this.§%!Z§ = new b2Vec2();
               if(_loc2_ || _loc1_)
               {
                  this.normal = new b2Vec2();
                  if(!(_loc1_ && this))
                  {
                     this.id = new b2ContactID();
                     if(!_loc1_)
                     {
                        addr83:
                        super();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr83);
      }
   }
}
