package § !V§
{
   import §+S§.b2Body;
   import §2"=§.b2Vec2;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §!2§:b2Vec2;
      
      public var § !c§:b2Vec2;
      
      public var §#"$§:b2Vec2;
      
      public var §4!E§:Boolean;
      
      public var §32§:Number;
      
      public var §[!8§:Number;
      
      public var §7!S§:Boolean;
      
      public var §&E§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§!2§ = new b2Vec2();
         this.§ !c§ = new b2Vec2();
         this.§#"$§ = new b2Vec2();
         super();
         type = b2Joint.§7!z§;
         this.§#"$§.Set(1,0);
         this.§4!E§ = false;
         this.§32§ = 0;
         this.§[!8§ = 0;
         this.§7!S§ = false;
         this.§&E§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §1o§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §@!<§ = param1;
         §3j§ = param2;
         this.§!2§ = §@!<§.GetLocalPoint(param3);
         this.§ !c§ = §3j§.GetLocalPoint(param3);
         this.§#"$§ = §@!<§.GetLocalVector(param4);
      }
   }
}
