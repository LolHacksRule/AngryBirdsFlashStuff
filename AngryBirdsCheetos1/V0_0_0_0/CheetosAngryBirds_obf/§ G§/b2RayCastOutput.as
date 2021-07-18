package § G§
{
   import §9"§.b2Vec2;
   
   public class b2RayCastOutput
   {
       
      
      public var normal:b2Vec2;
      
      public var fraction:Number;
      
      public function b2RayCastOutput()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.normal = new b2Vec2();
         }
         do
         {
            super();
         }
         while(_loc1_);
         
      }
   }
}
