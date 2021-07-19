package §_-1N§
{
   import §_-Iw§.b2Body;
   import §_-lh§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-Vb§;
      
      public var §_-dL§:b2Body;
      
      public var §_-h1§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-wc§;
         this.§_-Vb§ = null;
         this.§_-dL§ = null;
         this.§_-h1§ = null;
         this.collideConnected = false;
      }
   }
}
