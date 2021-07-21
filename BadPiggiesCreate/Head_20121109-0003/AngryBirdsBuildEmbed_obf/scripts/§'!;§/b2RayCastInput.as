package §'!;§
{
   import §<!B§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §&+§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.p1 = new b2Vec2();
         this.p2 = new b2Vec2();
         if(_loc5_ || param1)
         {
            super();
            if(!(_loc4_ && param2))
            {
               if(param1)
               {
                  if(_loc5_)
                  {
                     this.p1.SetV(param1);
                     §§goto(addr69);
                  }
                  this.p2.SetV(param2);
               }
            }
            §§goto(addr69);
         }
         addr69:
         if(!param2)
         {
         }
         this.§&+§ = param3;
      }
   }
}
