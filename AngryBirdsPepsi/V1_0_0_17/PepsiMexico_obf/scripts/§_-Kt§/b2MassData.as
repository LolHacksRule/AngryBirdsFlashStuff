package §_-Kt§
{
   import §_-Ja§.b2Vec2;
   
   public class b2MassData
   {
       
      
      public var §_-zT§:Number = 0.0;
      
      public var center:b2Vec2;
      
      public var §_-Lx§:Number = 0.0;
      
      public function b2MassData()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.center = new b2Vec2(0,0);
            if(_loc1_)
            {
               super();
            }
         }
      }
   }
}
