package §`i§
{
   import §>%§.§]3§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §6F§
   {
      
      public static const §4e§:Number = 1 / 30;
      
      public static const §70§:int = 10;
      
      public static const §!"§:Boolean = false;
      
      public static const § #§:Boolean = true;
       
      
      public var §8I§:b2World;
      
      private var §+^§:Boolean = true;
      
      public var §'!§:§[F§;
      
      public var §"J§:Sprite;
      
      private var § j§:b2DebugDraw;
      
      public var §"8§:§2W§;
      
      public var §>N§:Number;
      
      private var §"]§:Number;
      
      private var §2!5§:int;
      
      public function §6F§(param1:§2W§)
      {
         super();
         this.§"8§ = param1;
         this.§use§();
      }
      
      public function get §9!@§() : int
      {
         return this.§2!5§;
      }
      
      public function get §+!9§() : Number
      {
         return this.§"]§;
      }
      
      private function §use§() : void
      {
         this.§'!§ = new §[F§(this);
         this.§8I§ = new b2World(new b2Vec2(0,20),this.§+^§);
         this.§8I§.SetContactListener(this.§'!§);
         if(§!"§)
         {
            this.§8I§.SetWarmStarting(true);
            this.§"J§ = new Sprite();
            this.§ j§ = new b2DebugDraw();
            this.§ j§.AppendFlags(b2DebugDraw.e_shapeBit);
            this.§ j§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
            this.§ j§.AppendFlags(b2DebugDraw.e_jointBit);
            this.§ j§.SetDrawScale(1 / §2W§.§0;§);
            this.§ j§.SetFillAlpha(0.3);
            this.§ j§.SetLineThickness(1);
            this.§ j§.SetSprite(this.§"J§);
            this.§"8§.stage.addChild(this.§"J§);
            this.§8I§.SetDebugDraw(this.§ j§);
         }
      }
      
      public function clear() : void
      {
         this.§8I§.SetContactListener(null);
         this.§'!§ = null;
         if(§!"§)
         {
            this.§"J§.graphics.clear();
         }
         this.§"J§ = null;
         this.§8I§.ClearForces();
         this.§8I§ = null;
      }
      
      public function §;§() : void
      {
         if(§!"§)
         {
            this.§8I§.DrawDebugData();
            this.§"J§.parent.setChildIndex(this.§"J§,this.§"J§.parent.numChildren - 1);
         }
      }
      
      public function §3k§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§!"§)
         {
            this.§"J§.x = -param1;
            this.§"J§.y = -param2;
         }
      }
      
      public function §3$§(param1:Number) : Number
      {
         this.§"]§ = §4e§;
         var _loc2_:int = this.§;! §(param1);
         if(_loc2_ > §70§)
         {
            _loc2_ = §70§;
         }
         this.§+f§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§"]§ * 1000;
         }
         return param1;
      }
      
      public function §+f§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§>N§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§2!5§;
            _loc5_ = 0;
            if(§ #§)
            {
               _loc5_ = getTimer();
            }
            this.§8I§.Step(this.§"]§,10,10);
            this.§8I§.ClearForces();
            this.§>N§ += this.§"]§ * 1000;
            if(§ #§)
            {
               §]3§.§^!,§.§"!"§("Box2D",getTimer() - _loc5_);
            }
            this.§"8§.§#f§(this.§"]§);
            _loc4_++;
         }
      }
      
      private function §;! §(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§"]§ * 1000;
         }
         return _loc2_;
      }
   }
}
