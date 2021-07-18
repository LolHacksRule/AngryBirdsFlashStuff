package §_-OJ§
{
   import §_-Iw§.b2ContactImpulse;
   import §_-Iw§.b2ContactListener;
   import §_-a5§.b2Contact;
   import §_-qg§.b2Manifold;
   
   public class §_-FZ§ extends b2ContactListener
   {
       
      
      public var §_-fy§:§_-Bu§;
      
      public function §_-FZ§(param1:§_-Bu§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            if(_loc3_)
            {
               addr32:
               this.§_-fy§ = param1;
            }
            return;
         }
         §§goto(addr32);
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-fy§.§_-Ag§.objects.§_-5Q§(param1.§_-8S§(),param1.§_-16§());
         }
      }
   }
}
