package §_-ol§
{
   import §_-43§.b2Body;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-eL§;
      
      public var §_-4f§:b2Body;
      
      public var §_-FU§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-MX§;
         this.§_-eL§ = null;
         this.§_-4f§ = null;
         this.§_-FU§ = null;
         this.collideConnected = false;
      }
   }
}
