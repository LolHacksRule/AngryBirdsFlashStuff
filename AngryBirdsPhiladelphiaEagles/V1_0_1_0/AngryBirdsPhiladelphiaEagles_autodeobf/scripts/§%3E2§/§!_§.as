package §>2§
{
   import §@w§.§2G§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §!_§
   {
      
      public static const §@!P§:Number = 1 / 30;
      
      public static const §&!7§:int = 10;
      
      public static const §^!"§:Boolean = true;
       
      
      public var §7!J§:b2World;
      
      private var §#R§:Boolean = true;
      
      public var §1r§:§=!8§;
      
      public var §",§:Sprite;
      
      private var §,!,§:b2DebugDraw;
      
      private var §>I§:Boolean = false;
      
      public var §@k§:§4h§;
      
      public var §7P§:Number;
      
      private var §!w§:Number;
      
      private var §'g§:int;
      
      public function §!_§(param1:§4h§)
      {
         super();
         this.§@k§ = param1;
         this.§;!4§();
      }
      
      public function get §7!P§() : int
      {
         return this.§'g§;
      }
      
      public function get §+!5§() : Number
      {
         return this.§!w§;
      }
      
      private function §;!4§() : void
      {
         this.§1r§ = new §=!8§(this);
         this.§7!J§ = new b2World(new b2Vec2(0,20),this.§#R§);
         this.§7!J§.SetContactListener(this.§1r§);
      }
      
      public function clear() : void
      {
         this.§7!J§.SetContactListener(null);
         this.§1r§ = null;
         if(this.§>I§)
         {
            this.§",§.graphics.clear();
         }
         this.§",§ = null;
         this.§7!J§.ClearForces();
         this.§7!J§ = null;
      }
      
      public function §#!Q§() : void
      {
         if(this.§>I§)
         {
            this.§7!J§.DrawDebugData();
            this.§",§.parent.setChildIndex(this.§",§,this.§",§.parent.numChildren - 1);
         }
      }
      
      public function §!0§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§>I§)
         {
            _loc4_ = §2G§.§7!,§.box2DToScreen(0,0);
            this.§",§.x = _loc4_.x;
            this.§",§.y = _loc4_.y;
            this.§,!,§.SetDrawScale(1 / §4h§.§-9§ * param3);
         }
      }
      
      public function §?§(param1:Number) : Number
      {
         this.§!w§ = §@!P§;
         var _loc2_:int = this.§,!N§(param1);
         if(_loc2_ > §&!7§)
         {
            _loc2_ = §&!7§;
         }
         this.§[?§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§!w§ * 1000;
         }
         return param1;
      }
      
      public function §[?§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§7P§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§'g§;
            _loc5_ = 0;
            if(§^!"§)
            {
               _loc5_ = getTimer();
            }
            this.§7!J§.Step(this.§!w§,10,10);
            this.§7!J§.ClearForces();
            this.§7P§ += this.§!w§ * 1000;
            if(§^!"§)
            {
               §2G§.§ z§.§"M§("Box2D",getTimer() - _loc5_);
            }
            this.§@k§.§!3§(this.§!w§);
            _loc4_++;
         }
      }
      
      private function §,!N§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§!w§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §@q§(param1:Boolean) : void
      {
         if(this.§7!J§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§>I§)
            {
               if(!this.§",§ && !this.§,!,§)
               {
                  this.§",§ = new Sprite();
                  this.§,!,§ = new b2DebugDraw();
                  this.§,!,§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§,!,§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§,!,§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§,!,§.SetFillAlpha(0.3);
                  this.§,!,§.SetLineThickness(1);
                  this.§",§.mouseEnabled = false;
                  this.§,!,§.SetSprite(this.§",§);
                  this.§@k§.stage.addChild(this.§",§);
                  this.§7!J§.SetDebugDraw(this.§,!,§);
               }
            }
         }
         this.§>I§ = param1;
      }
      
      public function get §@q§() : Boolean
      {
         return this.§>I§;
      }
      
      public function get § !K§() : b2DebugDraw
      {
         return this.§,!,§;
      }
      
      public function §1!8§() : void
      {
         if(this.§,!,§)
         {
            this.§",§.graphics.clear();
         }
      }
   }
}
