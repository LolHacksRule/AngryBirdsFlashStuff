package §!!B§
{
   import §;U§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §+9§:b2Vec2;
      
      public var §']§:Number;
      
      public var §@t§:Number;
      
      public var §`L§:Number;
      
      public var § V§:Boolean;
      
      public var §`!D§:Boolean;
      
      public var §4e§:Boolean;
      
      public var §5&§:Boolean;
      
      public var §'!M§:Boolean;
      
      public var §0?§;
      
      public var §0l§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§+9§ = new b2Vec2();
         super();
         this.§0?§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§+9§.Set(0,0);
         this.§']§ = 0;
         this.§@t§ = 0;
         this.§`L§ = 0;
         this.§ V§ = true;
         this.§`!D§ = true;
         this.§4e§ = false;
         this.§5&§ = false;
         this.type = b2Body.b2_staticBody;
         this.§'!M§ = true;
         this.§0l§ = 1;
      }
   }
}
