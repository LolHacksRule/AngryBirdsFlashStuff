package §9A§
{
   import §'!3§.b2internal;
   import §3q§.b2Vec2;
   import §?0§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §`!X§:b2Vec2;
      
      public var §+!,§:b2Vec2;
      
      public var §1!`§:b2Vec2;
      
      public var §-$§:Boolean;
      
      public var §;r§:Number;
      
      public var §92§:Number;
      
      public var §2l§:Boolean;
      
      public var §4R§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§`!X§ = new b2Vec2();
         this.§+!,§ = new b2Vec2();
         this.§1!`§ = new b2Vec2();
         super();
         type = b2Joint.§1C§;
         this.§1!`§.Set(1,0);
         this.§-$§ = false;
         this.§;r§ = 0;
         this.§92§ = 0;
         this.§2l§ = false;
         this.§4R§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §;!W§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §#1§ = param1;
         §"!<§ = param2;
         this.§`!X§ = §#1§.GetLocalPoint(param3);
         this.§+!,§ = §"!<§.GetLocalPoint(param3);
         this.§1!`§ = §#1§.GetLocalVector(param4);
      }
   }
}
