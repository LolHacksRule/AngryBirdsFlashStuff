package §_-Ox§
{
   import §_-EH§.b2Body;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-ZT§;
      
      public var §_-lk§:b2Body;
      
      public var §_-OV§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-9h§;
         this.§_-ZT§ = null;
         this.§_-lk§ = null;
         this.§_-OV§ = null;
         this.collideConnected = false;
      }
   }
}
