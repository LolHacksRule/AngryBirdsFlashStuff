package §+S§
{
   import §2"=§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §;!k§:b2Vec2;
      
      public var §@n§:Number;
      
      public var §[!E§:Number;
      
      public var §[!u§:Number;
      
      public var §'!H§:Boolean;
      
      public var §54§:Boolean;
      
      public var §4_§:Boolean;
      
      public var §@!§:Boolean;
      
      public var §4!N§:Boolean;
      
      public var §1P§;
      
      public var §7!p§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§;!k§ = new b2Vec2();
         super();
         this.§1P§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§;!k§.Set(0,0);
         this.§@n§ = 0;
         this.§[!E§ = 0;
         this.§[!u§ = 0;
         this.§'!H§ = true;
         this.§54§ = true;
         this.§4_§ = false;
         this.§@!§ = false;
         this.type = b2Body.b2_staticBody;
         this.§4!N§ = true;
         this.§7!p§ = 1;
      }
   }
}
