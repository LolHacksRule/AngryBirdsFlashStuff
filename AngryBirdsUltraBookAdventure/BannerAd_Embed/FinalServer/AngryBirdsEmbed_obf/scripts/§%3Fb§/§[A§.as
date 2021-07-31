package §?b§
{
   import §5H§.§[k§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §[A§
   {
      
      public static const §7I§:Number = 1 / 30;
      
      public static const §[r§:int = 10;
      
      public static const §4!!§:Boolean = false;
      
      public static const §+!9§:Boolean = true;
       
      
      public var §-I§:b2World;
      
      private var §'_§:Boolean = true;
      
      public var §4t§:§2e§;
      
      public var §]E§:Sprite;
      
      private var §[H§:b2DebugDraw;
      
      public var §4!%§:§7!,§;
      
      public var §?#§:Number;
      
      private var §;4§:Number;
      
      private var §#u§:int;
      
      public function §[A§(param1:§7!,§)
      {
         super();
         this.§4!%§ = param1;
         this.§[?§();
      }
      
      public function get §'U§() : int
      {
         return this.§#u§;
      }
      
      public function get §"k§() : Number
      {
         return this.§;4§;
      }
      
      private function §[?§() : void
      {
         this.§4t§ = new §2e§(this);
         this.§-I§ = new b2World(new b2Vec2(0,20),this.§'_§);
         this.§-I§.SetContactListener(this.§4t§);
         if(§4!!§)
         {
            this.§-I§.SetWarmStarting(true);
            this.§]E§ = new Sprite();
            this.§[H§ = new b2DebugDraw();
            this.§[H§.AppendFlags(b2DebugDraw.e_shapeBit);
            this.§[H§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
            this.§[H§.AppendFlags(b2DebugDraw.e_jointBit);
            this.§[H§.SetDrawScale(1 / §7!,§.§ '§);
            this.§[H§.SetFillAlpha(0.3);
            this.§[H§.SetLineThickness(1);
            this.§[H§.SetSprite(this.§]E§);
            this.§4!%§.stage.addChild(this.§]E§);
            this.§-I§.SetDebugDraw(this.§[H§);
         }
      }
      
      public function clear() : void
      {
         this.§-I§.SetContactListener(null);
         this.§4t§ = null;
         if(§4!!§)
         {
            this.§]E§.graphics.clear();
         }
         this.§]E§ = null;
         this.§-I§.ClearForces();
         this.§-I§ = null;
      }
      
      public function §8>§() : void
      {
         if(§4!!§)
         {
            this.§-I§.DrawDebugData();
            this.§]E§.parent.setChildIndex(this.§]E§,this.§]E§.parent.numChildren - 1);
         }
      }
      
      public function §-b§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§4!!§)
         {
            this.§]E§.x = -param1;
            this.§]E§.y = -param2;
         }
      }
      
      public function §3!=§(param1:Number) : Number
      {
         this.§;4§ = §7I§;
         var _loc2_:int = this.§2;§(param1);
         if(_loc2_ > §[r§)
         {
            _loc2_ = §[r§;
         }
         this.§%X§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§;4§ * 1000;
         }
         return param1;
      }
      
      public function §%X§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§?#§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§#u§;
            _loc5_ = 0;
            if(§+!9§)
            {
               _loc5_ = getTimer();
            }
            this.§-I§.Step(this.§;4§,10,10);
            this.§-I§.ClearForces();
            this.§?#§ += this.§;4§ * 1000;
            if(§+!9§)
            {
               §[k§.§+S§.§8!+§("Box2D",getTimer() - _loc5_);
            }
            this.§4!%§.§default§(this.§;4§);
            _loc4_++;
         }
      }
      
      private function §2;§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§;4§ * 1000;
         }
         return _loc2_;
      }
   }
}
