package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-5W§;
      
      public var §_-33§:b2Body;
      
      public var §_-Pt§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-Gm§;
         this.§_-5W§ = null;
         this.§_-33§ = null;
         this.§_-Pt§ = null;
         this.collideConnected = false;
      }
   }
}
