package §3G§
{
   import §+!?§.§"h§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §'F§
   {
      
      public static const §=!+§:Number = 1 / 30;
      
      public static const §'H§:int = 10;
      
      public static const §=!A§:Boolean = true;
       
      
      public var §<!F§:b2World;
      
      private var §%4§:Boolean = true;
      
      public var §1q§:§4]§;
      
      public var §=!5§:Sprite;
      
      private var §]1§:b2DebugDraw;
      
      private var §&! §:Boolean = false;
      
      public var §33§:§!E§;
      
      public var §^b§:Number;
      
      private var §60§:Number;
      
      private var §!0§:int;
      
      public function §'F§(param1:§!E§)
      {
         super();
         this.§33§ = param1;
         this.§"Y§();
      }
      
      public function get §>! §() : int
      {
         return this.§!0§;
      }
      
      public function get §=!4§() : Number
      {
         return this.§60§;
      }
      
      private function §"Y§() : void
      {
         this.§1q§ = new §4]§(this);
         this.§<!F§ = new b2World(new b2Vec2(0,20),this.§%4§);
         this.§<!F§.SetContactListener(this.§1q§);
      }
      
      public function clear() : void
      {
         this.§<!F§.SetContactListener(null);
         this.§1q§ = null;
         if(this.§&! §)
         {
            this.§=!5§.graphics.clear();
         }
         this.§=!5§ = null;
         this.§<!F§.ClearForces();
         this.§<!F§ = null;
      }
      
      public function §'L§() : void
      {
         if(this.§&! §)
         {
            this.§<!F§.DrawDebugData();
            this.§=!5§.parent.setChildIndex(this.§=!5§,this.§=!5§.parent.numChildren - 1);
         }
      }
      
      public function §+C§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§&! §)
         {
            _loc4_ = §"h§.§1C§.§>9§(0,0);
            this.§=!5§.x = _loc4_.x;
            this.§=!5§.y = _loc4_.y;
            this.§]1§.SetDrawScale(1 / §!E§.§#N§ * param3);
         }
      }
      
      public function §5N§(param1:Number) : Number
      {
         this.§60§ = §=!+§;
         var _loc2_:int = this.§#J§(param1);
         if(_loc2_ > §'H§)
         {
            _loc2_ = §'H§;
         }
         this.§2!@§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§60§ * 1000;
         }
         return param1;
      }
      
      public function §2!@§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§^b§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§!0§;
            _loc5_ = 0;
            if(§=!A§)
            {
               _loc5_ = getTimer();
            }
            this.§<!F§.Step(this.§60§,10,10);
            this.§<!F§.ClearForces();
            this.§^b§ += this.§60§ * 1000;
            if(§=!A§)
            {
               §"h§.§73§.§false§("Box2D",getTimer() - _loc5_);
            }
            this.§33§.§&'§(this.§60§);
            _loc4_++;
         }
      }
      
      private function §#J§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§60§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §5!6§(param1:Boolean) : void
      {
         if(this.§<!F§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§&! §)
            {
               if(!this.§=!5§ && !this.§]1§)
               {
                  this.§=!5§ = new Sprite();
                  this.§]1§ = new b2DebugDraw();
                  this.§]1§.AppendFlags(b2DebugDraw.e_shapeBit);
                  this.§]1§.AppendFlags(b2DebugDraw.e_centerOfMassBit);
                  this.§]1§.AppendFlags(b2DebugDraw.e_jointBit);
                  this.§]1§.SetFillAlpha(0.3);
                  this.§]1§.SetLineThickness(1);
                  this.§=!5§.mouseEnabled = false;
                  this.§]1§.SetSprite(this.§=!5§);
                  this.§33§.stage.addChild(this.§=!5§);
                  this.§<!F§.SetDebugDraw(this.§]1§);
               }
            }
         }
         this.§&! § = param1;
      }
      
      public function get §5!6§() : Boolean
      {
         return this.§&! §;
      }
      
      public function get §;^§() : b2DebugDraw
      {
         return this.§]1§;
      }
      
      public function §`y§() : void
      {
         if(this.§]1§)
         {
            this.§=!5§.graphics.clear();
         }
      }
   }
}
