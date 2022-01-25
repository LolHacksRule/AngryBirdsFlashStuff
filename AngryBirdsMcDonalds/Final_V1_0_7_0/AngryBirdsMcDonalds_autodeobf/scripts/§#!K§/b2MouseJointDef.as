package §#!K§
{
   import §@g§.b2internal;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §!?§:Number;
      
      public var §^!H§:Number;
      
      public var §"! §:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§'g§;
         this.§!?§ = 0;
         this.§^!H§ = 5;
         this.§"! § = 0.7;
      }
   }
}
