package §3!g§
{
   import §"U§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §>!3§:b2Vec2;
      
      public var §>!C§:Number;
      
      public var §16§:Number;
      
      public var §@R§:Number;
      
      public var §+b§:Boolean;
      
      public var §7D§:Boolean;
      
      public var §1O§:Boolean;
      
      public var §"?§:Boolean;
      
      public var §0!`§:Boolean;
      
      public var §,3§;
      
      public var §`1§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§>!3§ = new b2Vec2();
         super();
         this.§,3§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§>!3§.Set(0,0);
         this.§>!C§ = 0;
         this.§16§ = 0;
         this.§@R§ = 0;
         this.§+b§ = true;
         this.§7D§ = true;
         this.§1O§ = false;
         this.§"?§ = false;
         this.type = b2Body.b2_staticBody;
         this.§0!`§ = true;
         this.§`1§ = 1;
      }
   }
}
