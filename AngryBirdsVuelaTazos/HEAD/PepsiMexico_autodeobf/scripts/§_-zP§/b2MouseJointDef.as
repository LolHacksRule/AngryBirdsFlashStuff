package §_-zP§
{
   import §_-bA§.b2Vec2;
   import §_-rz§.b2internal;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-qo§:Number;
      
      public var §_-4J§:Number;
      
      public var §_-ZH§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-qZ§;
         this.§_-qo§ = 0;
         this.§_-4J§ = 5;
         this.§_-ZH§ = 0.7;
      }
   }
}
