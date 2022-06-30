package §3!A§
{
   import §+&§.b2internal;
   import §^!Z§.b2Body;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §<!=§;
      
      public var §[!N§:b2Body;
      
      public var §0!'§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§&a§;
         this.§<!=§ = null;
         this.§[!N§ = null;
         this.§0!'§ = null;
         this.collideConnected = false;
      }
   }
}
