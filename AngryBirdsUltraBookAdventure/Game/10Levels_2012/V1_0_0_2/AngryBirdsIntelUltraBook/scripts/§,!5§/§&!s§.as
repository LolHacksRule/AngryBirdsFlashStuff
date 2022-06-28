package §,!5§
{
   import §>H§.b2Vec2;
   import §`w§.b2DebugDraw;
   import §`w§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   import §true§.§ _§;
   
   public class §&!s§
   {
      
      public static const §+!=§:Number = 1 / 30;
      
      public static const §>!t§:int = 10;
      
      public static const §@$§:Boolean = false;
      
      public static const §2!b§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §&!^§:Boolean = true;
      
      public var §"!f§:§8!e§;
      
      public var §8s§:Sprite;
      
      private var §"![§:b2DebugDraw;
      
      public var §?l§:§^g§;
      
      public var §^!§:Number;
      
      private var §'"§:Number;
      
      private var §1!U§:int;
      
      public function §&!s§(param1:§^g§)
      {
         super();
         this.§?l§ = param1;
         this.§>?§();
      }
      
      public function get §?!Z§() : int
      {
         return this.§1!U§;
      }
      
      public function get §>w§() : Number
      {
         return this.§'"§;
      }
      
      private function §>?§() : void
      {
         this.§"!f§ = new §8!e§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§&!^§);
         this.mWorld.§[-§(this.§"!f§);
         if(§@$§)
         {
            this.mWorld.§;#§(true);
            this.§8s§ = new Sprite();
            this.§"![§ = new b2DebugDraw();
            this.§"![§.§4!3§(b2DebugDraw.§;!s§);
            this.§"![§.§4!3§(b2DebugDraw.§;!o§);
            this.§"![§.§4!3§(b2DebugDraw.§5!9§);
            this.§"![§.§^!k§(1 / §^g§.§^!S§);
            this.§"![§.§+^§(0.3);
            this.§"![§.§6M§(1);
            this.§"![§.§%o§(this.§8s§);
            this.§?l§.stage.addChild(this.§8s§);
            this.mWorld.§4`§(this.§"![§);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.§[-§(null);
         this.§"!f§ = null;
         if(§@$§)
         {
            this.§8s§.graphics.clear();
         }
         this.§8s§ = null;
         this.mWorld.§45§();
         this.mWorld = null;
      }
      
      public function §,!Y§() : void
      {
         if(§@$§)
         {
            this.mWorld.§?!J§();
            this.§8s§.parent.setChildIndex(this.§8s§,this.§8s§.parent.numChildren - 1);
         }
      }
      
      public function §9!=§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§@$§)
         {
            this.§8s§.x = -param1;
            this.§8s§.y = -param2;
         }
      }
      
      public function §!!]§(param1:Number) : Number
      {
         this.§'"§ = §+!=§;
         var _loc2_:int = this.§set §(param1);
         if(_loc2_ > §>!t§)
         {
            _loc2_ = §>!t§;
         }
         this.§%!<§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§'"§ * 1000;
         }
         return param1;
      }
      
      public function §%!<§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§^!§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§1!U§;
            _loc5_ = 0;
            if(§2!b§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§#$§(this.§'"§,10,10);
            this.mWorld.§45§();
            this.§^!§ += this.§'"§ * 1000;
            if(§2!b§)
            {
               § _§.§2u§.§ j§("Box2D",getTimer() - _loc5_);
            }
            this.§?l§.handleEngineUpdateStep(this.§'"§);
            _loc4_++;
         }
      }
      
      private function §set §(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§'"§ * 1000;
         }
         return _loc2_;
      }
   }
}
