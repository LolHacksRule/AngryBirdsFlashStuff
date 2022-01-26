package §_-Rb§
{
   import §_-rg§.b2Body;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §_-QX§;
      
      public var §_-Ay§:b2Body;
      
      public var §_-vo§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§_-w2§;
         this.§_-QX§ = null;
         this.§_-Ay§ = null;
         this.§_-vo§ = null;
         this.collideConnected = false;
      }
   }
}
