package §`!Z§
{
   import §"U§.b2Vec2;
   import §3!g§.b2Body;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §<4§:b2Vec2;
      
      public var §2§:b2Vec2;
      
      public var §3!'§:b2Vec2;
      
      public var §2!;§:Boolean;
      
      public var §[!Q§:Number;
      
      public var §;;§:Number;
      
      public var §>!e§:Boolean;
      
      public var §7!!§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§<4§ = new b2Vec2();
         this.§2§ = new b2Vec2();
         this.§3!'§ = new b2Vec2();
         super();
         type = b2Joint.§@!E§;
         this.§3!'§.Set(1,0);
         this.§2!;§ = false;
         this.§[!Q§ = 0;
         this.§;;§ = 0;
         this.§>!e§ = false;
         this.§7!!§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §6!_§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §+!#§ = param1;
         §1!K§ = param2;
         this.§<4§ = §+!#§.GetLocalPoint(param3);
         this.§2§ = §1!K§.GetLocalPoint(param3);
         this.§3!'§ = §+!#§.GetLocalVector(param4);
      }
   }
}
