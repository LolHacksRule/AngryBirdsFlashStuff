package §%x§
{
   import §"!5§.§,!!§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §2N§
   {
      
      public static const §=!H§:Number = 1 / 30;
      
      public static const §"A§:int = 10;
      
      public static const §5r§:Boolean = false;
      
      public static const §1g§:Boolean = true;
       
      
      public var §[N§:b2World;
      
      private var §4m§:Boolean = true;
      
      public var §%n§:§0v§;
      
      public var §8l§:Sprite;
      
      private var §7$§:b2DebugDraw;
      
      public var §7C§:§#;§;
      
      public var §-&§:Number;
      
      private var §,4§:Number;
      
      private var §3E§:int;
      
      public function §2N§(param1:§#;§)
      {
         super();
         this.§7C§ = param1;
         this.§'=§();
      }
      
      public function get §4!&§() : int
      {
         return this.§3E§;
      }
      
      public function get §case§() : Number
      {
         return this.§,4§;
      }
      
      private function §'=§() : void
      {
         this.§%n§ = new §0v§(this);
         this.§[N§ = new b2World(new b2Vec2(0,20),this.§4m§);
         this.§[N§.SetContactListener(this.§%n§);
         if(§5r§)
         {
            this.§[N§.SetWarmStarting(true);
            this.§8l§ = new Sprite();
            this.§7$§ = new b2DebugDraw();
            this.§7$§.AppendFlags(b2DebugDraw.e_shapeBit);
            this.§7$§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
            this.§7$§.AppendFlags(b2DebugDraw.e_jointBit);
            this.§7$§.SetDrawScale(1 / §#;§.§`!2§);
            this.§7$§.SetFillAlpha(0.3);
            this.§7$§.SetLineThickness(1);
            this.§7$§.SetSprite(this.§8l§);
            this.§7C§.stage.addChild(this.§8l§);
            this.§[N§.SetDebugDraw(this.§7$§);
         }
      }
      
      public function clear() : void
      {
         this.§[N§.SetContactListener(null);
         this.§%n§ = null;
         if(§5r§)
         {
            this.§8l§.graphics.clear();
         }
         this.§8l§ = null;
         this.§[N§.ClearForces();
         this.§[N§ = null;
      }
      
      public function §0d§() : void
      {
         if(§5r§)
         {
            this.§[N§.DrawDebugData();
            this.§8l§.parent.setChildIndex(this.§8l§,this.§8l§.parent.numChildren - 1);
         }
      }
      
      public function §^-§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§5r§)
         {
            this.§8l§.x = -param1;
            this.§8l§.y = -param2;
         }
      }
      
      public function §!K§(param1:Number) : Number
      {
         this.§,4§ = §=!H§;
         var _loc2_:int = this.§1'§(param1);
         if(_loc2_ > §"A§)
         {
            _loc2_ = §"A§;
         }
         this.§7m§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§,4§ * 1000;
         }
         return param1;
      }
      
      public function §7m§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§-&§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§3E§;
            _loc5_ = 0;
            if(§1g§)
            {
               _loc5_ = getTimer();
            }
            this.§[N§.Step(this.§,4§,10,10);
            this.§[N§.ClearForces();
            this.§-&§ += this.§,4§ * 1000;
            if(§1g§)
            {
               §,!!§.§;!;§.§2B§("Box2D",getTimer() - _loc5_);
            }
            this.§7C§.§#5§(this.§,4§);
            _loc4_++;
         }
      }
      
      private function §1'§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§,4§ * 1000;
         }
         return _loc2_;
      }
   }
}
