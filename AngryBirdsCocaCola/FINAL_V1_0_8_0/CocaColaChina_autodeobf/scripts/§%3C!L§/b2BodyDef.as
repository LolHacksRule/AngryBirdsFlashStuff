package §<!L§
{
   import §6V§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §'2§:b2Vec2;
      
      public var §<!-§:Number;
      
      public var §!A§:Number;
      
      public var §<u§:Number;
      
      public var §]%§:Boolean;
      
      public var §45§:Boolean;
      
      public var §%M§:Boolean;
      
      public var §0!8§:Boolean;
      
      public var §]X§:Boolean;
      
      public var §`P§;
      
      public var § !S§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§'2§ = new b2Vec2();
         super();
         this.§`P§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§'2§.Set(0,0);
         this.§<!-§ = 0;
         this.§!A§ = 0;
         this.§<u§ = 0;
         this.§]%§ = true;
         this.§45§ = true;
         this.§%M§ = false;
         this.§0!8§ = false;
         this.type = b2Body.b2_staticBody;
         this.§]X§ = true;
         this.§ !S§ = 1;
      }
   }
}
