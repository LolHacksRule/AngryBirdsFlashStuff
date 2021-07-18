package §`j§
{
   import §0!G§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §^!T§:b2Vec2;
      
      public var §6s§:Number;
      
      public var §+!9§:Number;
      
      public var §?!'§:Number;
      
      public var §9W§:Boolean;
      
      public var §0-§:Boolean;
      
      public var §<K§:Boolean;
      
      public var §<!;§:Boolean;
      
      public var §3?§:Boolean;
      
      public var §4!E§;
      
      public var §'!>§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§^!T§ = new b2Vec2();
         super();
         this.§4!E§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§^!T§.Set(0,0);
         this.§6s§ = 0;
         this.§+!9§ = 0;
         this.§?!'§ = 0;
         this.§9W§ = true;
         this.§0-§ = true;
         this.§<K§ = false;
         this.§<!;§ = false;
         this.type = b2Body.b2_staticBody;
         this.§3?§ = true;
         this.§'!>§ = 1;
      }
   }
}
