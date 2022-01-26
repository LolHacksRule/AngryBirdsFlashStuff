package §_-gy§
{
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-mx§;
      
      public var §_-cw§:b2Body;
      
      public var §_-U9§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-lD§;
         this.§_-mx§ = null;
         this.§_-cw§ = null;
         this.§_-U9§ = null;
         this.collideConnected = false;
      }
   }
}
