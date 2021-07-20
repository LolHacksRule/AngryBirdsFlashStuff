package §0!2§
{
   import §&!Y§.b2DebugDraw;
   import §&!Y§.b2World;
   import §5!G§.§&2§;
   import §7F§.b2Vec2;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §+!T§
   {
      
      public static const §1!5§:Number = 1 / 30;
      
      public static const §0!]§:int = 10;
      
      public static const §0!f§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §'"0§:Boolean = true;
      
      public var §@!Q§:§@l§;
      
      public var §6z§:Sprite;
      
      private var §56§:b2DebugDraw;
      
      private var §!"4§:Boolean = false;
      
      public var §^!"§:§5"L§;
      
      public var §,+§:Number;
      
      private var §1L§:Number;
      
      private var §`!!§:int;
      
      public function §+!T§(param1:§5"L§)
      {
         super();
         this.§^!"§ = param1;
         this.§`!,§();
      }
      
      public function get §2!_§() : int
      {
         return this.§`!!§;
      }
      
      public function get §"!l§() : Number
      {
         return this.§1L§;
      }
      
      private function §`!,§() : void
      {
         this.§@!Q§ = new §@l§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§'"0§);
         this.mWorld.§<_§(this.§@!Q§);
      }
      
      public function clear() : void
      {
         this.mWorld.§<_§(null);
         this.§@!Q§ = null;
         if(this.§!"4§)
         {
            this.§6z§.graphics.clear();
         }
         this.§6z§ = null;
         this.mWorld.§&!A§();
         this.mWorld = null;
      }
      
      public function §2!-§() : void
      {
         if(this.§!"4§)
         {
            this.mWorld.§]"&§();
            this.§6z§.parent.setChildIndex(this.§6z§,this.§6z§.parent.numChildren - 1);
         }
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§!"4§)
         {
            _loc4_ = §&2§.§],§.§'w§(0,0);
            this.§6z§.x = _loc4_.x;
            this.§6z§.y = _loc4_.y;
            this.§56§.§>,§(1 / §5"L§.§@>§ * param3);
         }
      }
      
      public function §<!@§(param1:Number) : Number
      {
         this.§1L§ = §1!5§;
         var _loc2_:int = this.§@!r§(param1);
         if(_loc2_ > §0!]§)
         {
            _loc2_ = §0!]§;
         }
         this.§!!f§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§1L§ * 1000;
         }
         return param1;
      }
      
      public function §!!f§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§,+§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§`!!§;
            _loc5_ = 0;
            if(§0!f§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§;!z§(this.§1L§,10,10);
            this.mWorld.§&!A§();
            this.§,+§ += this.§1L§ * 1000;
            if(§0!f§)
            {
               §&2§.§8"I§.§@d§("Box2D",getTimer() - _loc5_);
            }
            this.§^!"§.handleEngineUpdateStep(this.§1L§);
            _loc4_++;
         }
      }
      
      private function §@!r§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§1L§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §2c§(param1:Boolean) : void
      {
         if(this.mWorld == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§!"4§)
            {
               if(!this.§6z§ && !this.§56§)
               {
                  this.§6z§ = new Sprite();
                  this.§56§ = new b2DebugDraw();
                  this.§56§.§5!,§(b2DebugDraw.§4!c§);
                  this.§56§.§5!,§(b2DebugDraw.§@"E§);
                  this.§56§.§5!,§(b2DebugDraw.§>!@§);
                  this.§56§.§6"A§(0.3);
                  this.§56§.§]J§(1);
                  this.§6z§.mouseEnabled = false;
                  this.§56§.§ c§(this.§6z§);
                  this.§^!"§.stage.addChild(this.§6z§);
                  this.mWorld.§>8§(this.§56§);
               }
            }
         }
         else if(this.§6z§)
         {
            this.§6z§.graphics.clear();
         }
         this.§!"4§ = param1;
      }
      
      public function get §2c§() : Boolean
      {
         return this.§!"4§;
      }
      
      public function get §9B§() : b2DebugDraw
      {
         return this.§56§;
      }
      
      public function §#" §() : void
      {
         if(this.§56§)
         {
            this.§6z§.graphics.clear();
         }
      }
   }
}
