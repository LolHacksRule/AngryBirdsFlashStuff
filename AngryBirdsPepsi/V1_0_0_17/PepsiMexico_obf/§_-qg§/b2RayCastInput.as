package §_-qg§
{
   import §_-Ja§.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var §_-fa§:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.p1 = new b2Vec2();
            this.p2 = new b2Vec2();
            super();
            if(_loc4_ || param3)
            {
               if(param1)
               {
                  this.p1.SetV(param1);
               }
               if(param2)
               {
                  if(!_loc5_)
                  {
                     this.p2.SetV(param2);
                  }
               }
            }
         }
         this.§_-fa§ = param3;
      }
   }
}
