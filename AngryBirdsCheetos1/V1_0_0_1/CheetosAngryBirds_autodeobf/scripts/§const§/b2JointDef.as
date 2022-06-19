package §const§
{
   import §_-b4§.b2internal;
   import §try§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-MJ§;
      
      public var §_-6a§:b2Body;
      
      public var §_-95§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-F1§;
         this.§_-MJ§ = null;
         this.§_-6a§ = null;
         this.§_-95§ = null;
         this.collideConnected = false;
      }
   }
}
