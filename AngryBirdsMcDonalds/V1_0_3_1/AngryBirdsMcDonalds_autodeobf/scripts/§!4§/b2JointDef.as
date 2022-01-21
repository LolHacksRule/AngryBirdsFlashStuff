package §!4§
{
   import §&x§.b2Body;
   import §3o§.b2internal;
   
   use namespace b2internal;
   
   public class b2JointDef
   {
       
      
      public var type:int;
      
      public var §!k§;
      
      public var §@!F§:b2Body;
      
      public var §9!T§:b2Body;
      
      public var collideConnected:Boolean;
      
      public function b2JointDef()
      {
         super();
         this.type = b2Joint.§1!Q§;
         this.§!k§ = null;
         this.§@!F§ = null;
         this.§9!T§ = null;
         this.collideConnected = false;
      }
   }
}
