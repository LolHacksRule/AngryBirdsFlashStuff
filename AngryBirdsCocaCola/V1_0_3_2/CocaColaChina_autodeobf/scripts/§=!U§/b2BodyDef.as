package §=!U§
{
   import §implements§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §]$§:b2Vec2;
      
      public var §?M§:Number;
      
      public var §';§:Number;
      
      public var §,w§:Number;
      
      public var §,V§:Boolean;
      
      public var §3!6§:Boolean;
      
      public var §9!;§:Boolean;
      
      public var §0-§:Boolean;
      
      public var §]!5§:Boolean;
      
      public var §`!`§;
      
      public var §`g§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§]$§ = new b2Vec2();
         super();
         this.§`!`§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§]$§.Set(0,0);
         this.§?M§ = 0;
         this.§';§ = 0;
         this.§,w§ = 0;
         this.§,V§ = true;
         this.§3!6§ = true;
         this.§9!;§ = false;
         this.§0-§ = false;
         this.type = b2Body.b2_staticBody;
         this.§]!5§ = true;
         this.§`g§ = 1;
      }
   }
}
