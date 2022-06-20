package §3,§
{
   import § !k§.b2DebugDraw;
   import § !k§.b2World;
   import §!"8§.b2Vec2;
   import §+I§.§9!%§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §^!#§
   {
      
      public static const §&!Q§:Number = 1 / 30;
      
      public static const §;!v§:int = 10;
      
      public static const §?!%§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §9!T§:Boolean = true;
      
      public var §^"B§:§%<§;
      
      public var §0"2§:Sprite;
      
      private var §=g§:b2DebugDraw;
      
      private var §4"#§:Boolean = false;
      
      public var §0!J§:§[!;§;
      
      public var §-"3§:Number;
      
      private var §]!X§:Number;
      
      private var §>2§:int;
      
      public function §^!#§(param1:§[!;§)
      {
         super();
         this.§0!J§ = param1;
         this.§^!Y§();
      }
      
      public function get §3!o§() : int
      {
         return this.§>2§;
      }
      
      public function get §52§() : Number
      {
         return this.§]!X§;
      }
      
      private function §^!Y§() : void
      {
         this.§^"B§ = new §%<§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§9!T§);
         this.mWorld.§#a§(this.§^"B§);
      }
      
      public function clear() : void
      {
         this.mWorld.§#a§(null);
         this.§^"B§ = null;
         if(this.§4"#§)
         {
            this.§0"2§.graphics.clear();
         }
         this.§0"2§ = null;
         this.mWorld.§4O§();
         this.mWorld = null;
      }
      
      public function §]]§() : void
      {
         if(this.§4"#§)
         {
            this.mWorld.§4G§();
            this.§0"2§.parent.setChildIndex(this.§0"2§,this.§0"2§.parent.numChildren - 1);
         }
      }
      
      public function §6!>§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§4"#§)
         {
            _loc4_ = §9!%§.§!!M§.§%"!§(0,0);
            this.§0"2§.x = _loc4_.x;
            this.§0"2§.y = _loc4_.y;
            this.§=g§.§%R§(1 / §[!;§.§4!O§ * param3);
         }
      }
      
      public function §1G§(param1:Number) : Number
      {
         this.§]!X§ = §&!Q§;
         var _loc2_:int = this.§>!@§(param1);
         if(_loc2_ > §;!v§)
         {
            _loc2_ = §;!v§;
         }
         this.§%"?§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§]!X§ * 1000;
         }
         return param1;
      }
      
      public function §%"?§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§-"3§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§>2§;
            _loc5_ = 0;
            if(§?!%§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§,"9§(this.§]!X§,10,10);
            this.mWorld.§4O§();
            this.§-"3§ += this.§]!X§ * 1000;
            if(§?!%§)
            {
               §9!%§.§<y§.§!F§("Box2D",getTimer() - _loc5_);
            }
            this.§0!J§.handleEngineUpdateStep(this.§]!X§);
            _loc4_++;
         }
      }
      
      private function §>!@§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§]!X§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §'"=§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§4"#§)
            {
               if(!this.§0"2§ && !this.§=g§)
               {
                  this.§0"2§ = new Sprite();
                  this.§=g§ = new b2DebugDraw();
                  this.§=g§.§,!4§(b2DebugDraw.§ 8§);
                  this.§=g§.§,!4§(b2DebugDraw.§8n§);
                  this.§=g§.§,!4§(b2DebugDraw.§6=§);
                  this.§=g§.§9r§(0.3);
                  this.§=g§.§4!S§(1);
                  this.§0"2§.mouseEnabled = false;
                  this.§=g§.§^@§(this.§0"2§);
                  this.§0!J§.stage.addChild(this.§0"2§);
                  this.mWorld.§;n§(this.§=g§);
               }
            }
         }
         this.§4"#§ = param1;
      }
      
      public function get §'"=§() : Boolean
      {
         return this.§4"#§;
      }
      
      public function get §!!!§() : b2DebugDraw
      {
         return this.§=g§;
      }
      
      public function §5;§() : void
      {
         if(this.§=g§)
         {
            this.§0"2§.graphics.clear();
         }
      }
   }
}
