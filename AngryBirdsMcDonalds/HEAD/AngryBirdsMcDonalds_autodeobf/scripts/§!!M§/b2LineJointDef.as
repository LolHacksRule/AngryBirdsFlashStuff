package §!!M§
{
   import §+S§.b2Vec2;
   import §8T§.b2Body;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §5!E§:b2Vec2;
      
      public var §21§:b2Vec2;
      
      public var §85§:b2Vec2;
      
      public var §5X§:Boolean;
      
      public var §#!b§:Number;
      
      public var §,!S§:Number;
      
      public var §,!9§:Boolean;
      
      public var §8!L§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§5!E§ = new b2Vec2();
         this.§21§ = new b2Vec2();
         this.§85§ = new b2Vec2();
         super();
         type = b2Joint.§?!J§;
         this.§85§.Set(1,0);
         this.§5X§ = false;
         this.§#!b§ = 0;
         this.§,!S§ = 0;
         this.§,!9§ = false;
         this.§8!L§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §`!9§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §-i§ = param1;
         §0!F§ = param2;
         this.§5!E§ = §-i§.GetLocalPoint(param3);
         this.§21§ = §0!F§.GetLocalPoint(param3);
         this.§85§ = §-i§.GetLocalVector(param4);
      }
   }
}
