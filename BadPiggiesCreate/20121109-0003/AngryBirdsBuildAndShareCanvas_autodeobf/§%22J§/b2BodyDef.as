package §"J§
{
   import §<!a§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var § %§:b2Vec2;
      
      public var §3D§:Number;
      
      public var §8!M§:Number;
      
      public var §^"6§:Number;
      
      public var §-!3§:Boolean;
      
      public var §9!'§:Boolean;
      
      public var §7'§:Boolean;
      
      public var §7@§:Boolean;
      
      public var §`!U§:Boolean;
      
      public var § S§;
      
      public var §[!V§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§ %§ = new b2Vec2();
         super();
         this.§ S§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§ %§.Set(0,0);
         this.§3D§ = 0;
         this.§8!M§ = 0;
         this.§^"6§ = 0;
         this.§-!3§ = true;
         this.§9!'§ = true;
         this.§7'§ = false;
         this.§7@§ = false;
         this.type = b2Body.b2_staticBody;
         this.§`!U§ = true;
         this.§[!V§ = 1;
      }
   }
}
