package §&!-§
{
   import §0!'§.b2Shape;
   import §8>§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §"!R§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §8"§:Number;
      
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
            loop0:
            while(true)
            {
               this.§"!R§ = new b2Vec2();
               while(true)
               {
                  this.normal = new b2Vec2();
                  addr69:
                  if(_loc2_ || _loc1_)
                  {
                     super();
                     addr76:
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(!(_loc2_ || this))
                        {
                           while(true)
                           {
                              this.id = new b2ContactID();
                              continue loop3;
                           }
                           return;
                           addr46:
                           addr82:
                        }
                        §§goto(addr69);
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
   }
}
