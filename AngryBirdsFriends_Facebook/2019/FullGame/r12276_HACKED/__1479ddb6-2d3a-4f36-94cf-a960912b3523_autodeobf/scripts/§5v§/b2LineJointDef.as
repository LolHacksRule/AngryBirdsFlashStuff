package §5v§
{
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §6!R§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §"#b§:b2Vec2;
      
      public var §[#b§:b2Vec2;
      
      public var §4#`§:b2Vec2;
      
      public var §0#[§:Boolean;
      
      public var §6##§:Number;
      
      public var §'!4§:Number;
      
      public var §["y§:Boolean;
      
      public var §^"j§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§"#b§ = new b2Vec2();
         this.§[#b§ = new b2Vec2();
         this.§4#`§ = new b2Vec2();
         super();
         type = b2Joint.§?#v§;
         this.§4#`§.Set(1,0);
         this.§0#[§ = false;
         this.§6##§ = 0;
         this.§'!4§ = 0;
         this.§["y§ = false;
         this.§^"j§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §80§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §,E§ = param1;
         §&$7§ = param2;
         this.§"#b§ = §,E§.GetLocalPoint(param3);
         this.§[#b§ = §&$7§.GetLocalPoint(param3);
         this.§4#`§ = §,E§.GetLocalVector(param4);
      }
   }
}
