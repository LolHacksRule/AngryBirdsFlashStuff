package § o§
{
   import §6!H§.b2Vec2;
   
   public class b2BodyDef
   {
       
      
      public var type:uint;
      
      public var position:b2Vec2;
      
      public var angle:Number;
      
      public var §8w§:b2Vec2;
      
      public var §3!I§:Number;
      
      public var §?!,§:Number;
      
      public var §60§:Number;
      
      public var §,!E§:Boolean;
      
      public var §>!`§:Boolean;
      
      public var §'r§:Boolean;
      
      public var §7N§:Boolean;
      
      public var §-[§:Boolean;
      
      public var §["§;
      
      public var §6§:Number;
      
      public function b2BodyDef()
      {
         this.position = new b2Vec2();
         this.§8w§ = new b2Vec2();
         super();
         this.§["§ = null;
         this.position.Set(0,0);
         this.angle = 0;
         this.§8w§.Set(0,0);
         this.§3!I§ = 0;
         this.§?!,§ = 0;
         this.§60§ = 0;
         this.§,!E§ = true;
         this.§>!`§ = true;
         this.§'r§ = false;
         this.§7N§ = false;
         this.type = b2Body.b2_staticBody;
         this.§-[§ = true;
         this.§6§ = 1;
      }
   }
}
