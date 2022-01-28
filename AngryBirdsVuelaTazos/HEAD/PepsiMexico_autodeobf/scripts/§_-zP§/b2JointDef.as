package §_-zP§
{
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-nF§;
      
      public var §_-wE§:b2Body;
      
      public var §_-3J§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-m-§;
         this.§_-nF§ = null;
         this.§_-wE§ = null;
         this.§_-3J§ = null;
         this.collideConnected = false;
      }
   }
}
