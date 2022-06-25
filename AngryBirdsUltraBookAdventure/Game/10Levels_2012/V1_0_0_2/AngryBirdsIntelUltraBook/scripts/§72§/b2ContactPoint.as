package §72§
{
   import §2!+§.b2Shape;
   import §>H§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §>!r§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var § try§:Number;
      
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
               this.§>!r§ = new b2Vec2();
               addr69:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               super();
               addr76:
               if(!(_loc1_ && _loc1_))
               {
                  addr44:
                  if(_loc1_ && _loc1_)
                  {
                     loop2:
                     while(true)
                     {
                        this.id = new b2ContactID();
                        addr67:
                        addr88:
                        while(_loc2_)
                        {
                           §§goto(addr69);
                           §§goto(addr76);
                        }
                        while(true)
                        {
                           this.normal = new b2Vec2();
                           continue loop2;
                        }
                     }
                  }
                  return;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr88);
      }
   }
}
