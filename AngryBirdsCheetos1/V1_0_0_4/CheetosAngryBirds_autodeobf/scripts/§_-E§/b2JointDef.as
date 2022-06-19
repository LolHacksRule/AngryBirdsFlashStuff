package §_-E§
{
   import §_-00B§.b2Body;
   import §_-Jf§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-FA§;
      
      public var §_-c7§:b2Body;
      
      public var §_-60§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-da§;
         this.§_-FA§ = null;
         this.§_-c7§ = null;
         this.§_-60§ = null;
         this.collideConnected = false;
      }
   }
}
