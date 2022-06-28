package §_-09-§
{
   import §_-5§.b2internal;
   import §_-aU§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-05u§;
      
      public var §_-ZR§:b2Body;
      
      public var §_-7b§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-fY§;
         this.§_-05u§ = null;
         this.§_-ZR§ = null;
         this.§_-7b§ = null;
         this.collideConnected = false;
      }
   }
}
