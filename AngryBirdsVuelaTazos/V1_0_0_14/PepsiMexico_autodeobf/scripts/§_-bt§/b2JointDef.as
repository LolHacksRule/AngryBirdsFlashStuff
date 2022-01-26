package §_-bt§
{
   import §_-bW§.b2internal;
   import §const§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-tW§;
      
      public var §_-pV§:b2Body;
      
      public var §_-3o§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-Vt§;
         this.§_-tW§ = null;
         this.§_-pV§ = null;
         this.§_-3o§ = null;
         this.collideConnected = false;
      }
   }
}
