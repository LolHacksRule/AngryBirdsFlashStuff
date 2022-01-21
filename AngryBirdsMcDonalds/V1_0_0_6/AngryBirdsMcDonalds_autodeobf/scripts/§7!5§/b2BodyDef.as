package §7!5§
{
   import §@![§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §?2§:b2Vec2;
      
      public var §5r§:Number;
      
      public var §;!j§:Number;
      
      public var §3!-§:Number;
      
      public var §'!@§:Boolean;
      
      public var §]9§:Boolean;
      
      public var §`!X§:Boolean;
      
      public var §!!O§:Boolean;
      
      public var §0r§:Boolean;
      
      public var §7M§;
      
      public var §#!e§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§?2§ = new b2Vec2();
         super();
         this.§7M§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§?2§.Set(0,0);
         this.§5r§ = 0;
         this.§;!j§ = 0;
         this.§3!-§ = 0;
         this.§'!@§ = true;
         this.§]9§ = true;
         this.§`!X§ = false;
         this.§!!O§ = false;
         this.type = b2Body.b2_staticBody;
         this.§0r§ = true;
         this.§#!e§ = 1;
      }
   }
}
