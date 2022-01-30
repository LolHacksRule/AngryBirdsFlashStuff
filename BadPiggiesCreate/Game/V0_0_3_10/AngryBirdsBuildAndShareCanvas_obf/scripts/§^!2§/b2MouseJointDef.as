package §^!2§
{
   import §!S§.b2internal;
   import §?!h§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §4"5§:Number;
      
      public var §`!j§:Number;
      
      public var §#T§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§!!?§;
         this.§4"5§ = 0;
         this.§`!j§ = 5;
         this.§#T§ = 0.7;
      }
   }
}
