package §5!_§
{
   import §8!H§.b2internal;
   import §?!&§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §5b§:Number;
      
      public var §!N§:Number;
      
      public var §^c§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§>X§;
         this.§5b§ = 0;
         this.§!N§ = 5;
         this.§^c§ = 0.7;
      }
   }
}
