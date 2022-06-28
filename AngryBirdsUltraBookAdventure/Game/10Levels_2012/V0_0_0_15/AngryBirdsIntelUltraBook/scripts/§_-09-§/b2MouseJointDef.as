package §_-09-§
{
   import §_-5§.b2internal;
   import §_-Yp§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2MouseJointDef extends b2JointDef
   {
       
      
      public var target:b2Vec2;
      
      public var §_-oX§:Number;
      
      public var §true §:Number;
      
      public var §_-9r§:Number;
      
      public function b2MouseJointDef()
      {
         this.target = new b2Vec2();
         super();
         type = b2Joint.§_-w§;
         this.§_-oX§ = 0;
         this.§true § = 5;
         this.§_-9r§ = 0.7;
      }
   }
}
