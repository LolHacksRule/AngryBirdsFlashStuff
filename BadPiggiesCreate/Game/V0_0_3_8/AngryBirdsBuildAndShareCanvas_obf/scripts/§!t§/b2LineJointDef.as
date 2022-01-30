package §!t§
{
   import §8,§.b2internal;
   import §9v§.b2Vec2;
   import §?!E§.b2Body;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var § ;§:b2Vec2;
      
      public var §8!Z§:b2Vec2;
      
      public var §=!i§:b2Vec2;
      
      public var §+!6§:Boolean;
      
      public var §'m§:Number;
      
      public var §#!7§:Number;
      
      public var §-! §:Boolean;
      
      public var §@!#§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§ ;§ = new b2Vec2();
         this.§8!Z§ = new b2Vec2();
         this.§=!i§ = new b2Vec2();
         super();
         type = b2Joint.§-!#§;
         this.§=!i§.Set(1,0);
         this.§+!6§ = false;
         this.§'m§ = 0;
         this.§#!7§ = 0;
         this.§-! § = false;
         this.§@!#§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §`!&§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §["%§ = param1;
         §`!<§ = param2;
         this.§ ;§ = §["%§.GetLocalPoint(param3);
         this.§8!Z§ = §`!<§.GetLocalPoint(param3);
         this.§=!i§ = §["%§.GetLocalVector(param4);
      }
   }
}
