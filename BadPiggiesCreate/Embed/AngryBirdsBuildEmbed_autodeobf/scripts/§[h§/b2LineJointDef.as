package §[h§
{
   import § !t§.b2Body;
   import §<!B§.b2Vec2;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJointDef extends b2JointDef
   {
       
      
      public var §;!1§:b2Vec2;
      
      public var §%?§:b2Vec2;
      
      public var §<E§:b2Vec2;
      
      public var §'!v§:Boolean;
      
      public var §7=§:Number;
      
      public var §2!q§:Number;
      
      public var §3!J§:Boolean;
      
      public var §=!G§:Number;
      
      public var motorSpeed:Number;
      
      public function b2LineJointDef()
      {
         this.§;!1§ = new b2Vec2();
         this.§%?§ = new b2Vec2();
         this.§<E§ = new b2Vec2();
         super();
         type = b2Joint.§?k§;
         this.§<E§.Set(1,0);
         this.§'!v§ = false;
         this.§7=§ = 0;
         this.§2!q§ = 0;
         this.§3!J§ = false;
         this.§=!G§ = 0;
         this.motorSpeed = 0;
      }
      
      public function §6!V§(param1:b2Body, param2:b2Body, param3:b2Vec2, param4:b2Vec2) : void
      {
         §[!i§ = param1;
         §;!K§ = param2;
         this.§;!1§ = §[!i§.GetLocalPoint(param3);
         this.§%?§ = §;!K§.GetLocalPoint(param3);
         this.§<E§ = §[!i§.GetLocalVector(param4);
      }
   }
}
