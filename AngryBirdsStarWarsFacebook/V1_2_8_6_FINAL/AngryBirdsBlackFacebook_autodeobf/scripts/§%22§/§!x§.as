package §"§#0
{
   import §7"A§.b2Vec2;
   import §7§.§8[§;
   import §>"_§.b2DebugDraw;
   import §>"_§.b2World;
   import com.angrybirds.§<!J§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §!x§
   {
      
      public static const §^"K§:Number = 1000 / 30;
      
      public static const §-!a§:int = 10;
      
      public static const §%'§:Boolean = false;
      
      public static const §2a§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §]<§:Boolean = true;
      
      public var §&D§:§&J§;
      
      public var §;"c§:Sprite;
      
      private var §8"I§:b2DebugDraw;
      
      public var §+!E§:§;!E§;
      
      public var § !2§:Number;
      
      private var §-"?§:Number;
      
      private var §2"x§:int;
      
      private var §0"N§:Boolean = false;
      
      public function §!x§(param1:§;!E§, param2:Number = 20)
      {
         super();
         this.§+!E§ = param1;
         this.§1"d§(param2);
         this.§9# § = §%'§;
      }
      
      public function get §&[§() : int
      {
         return this.§2"x§;
      }
      
      public function get §=!m§() : Number
      {
         return this.§-"?§;
      }
      
      public function set §9# §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8"I§ = new b2DebugDraw();
            this.§8"I§.§%<§(b2DebugDraw.each);
            this.§8"I§.§%<§(b2DebugDraw.§#H§);
            this.§8"I§.§%<§(b2DebugDraw.§!"F§);
            this.§8"I§.§#"j§(0.7);
            this.§8"I§.§#!D§(1);
            if(!this.§;"c§)
            {
               this.§;"c§ = new Sprite();
               this.§;"c§.mouseEnabled = false;
               this.§+!E§.stage.addChild(this.§;"c§);
            }
            this.§8"I§.§8"#§(this.§;"c§);
            this.mWorld.§,!,§(this.§8"I§);
         }
         else
         {
            if(this.§;"c§)
            {
               this.§+!E§.stage.removeChild(this.§;"c§);
               this.§;"c§ = null;
            }
            if(this.§8"I§)
            {
               this.mWorld.§,!,§(null);
               this.§8"I§ = null;
            }
         }
         this.§0"N§ = param1;
      }
      
      private function §1"d§(param1:Number) : void
      {
         this.§&D§ = new §&J§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§]<§);
         this.mWorld.§-!?§(this.§&D§);
      }
      
      public function clear() : void
      {
         this.mWorld.§-!?§(null);
         this.§&D§ = null;
         if(this.§;"c§)
         {
            this.§+!E§.stage.removeChild(this.§;"c§);
            this.§;"c§.graphics.clear();
            this.§;"c§ = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §7j§() : void
      {
         if(this.§0"N§)
         {
            this.mWorld.§<!K§();
            this.§;"c§.parent.setChildIndex(this.§;"c§,this.§;"c§.parent.numChildren - 1);
         }
      }
      
      public function §7!G§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§0"N§)
         {
            _loc3_ = §<!J§.§=!%§.§@"U§(0,0);
            this.§;"c§.x = _loc3_.x;
            this.§;"c§.y = _loc3_.y;
            this.§8"I§.§-"b§(1 / §;!E§.§0"?§ * §8[§.§#?§);
         }
      }
      
      public function §28§(param1:Number) : Number
      {
         this.§-"?§ = §^"K§;
         var _loc2_:int = this.§[$§(param1);
         if(_loc2_ > §-!a§)
         {
            _loc2_ = §-!a§;
         }
         this.§6!t§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§-"?§;
         }
         return param1;
      }
      
      public function §6!t§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§ !2§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§2"x§;
            _loc6_ = 0;
            if(§2a§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§-"?§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§ !2§ += this.§-"?§;
            if(§2a§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§+!E§.handleEngineUpdateStep(this.§-"?§);
            _loc5_++;
         }
         if(§2a§)
         {
            §<!J§.§1t§.§>"1§("Box2D",_loc4_);
         }
      }
      
      private function §[$§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§-"?§;
         }
         return _loc2_;
      }
   }
}
