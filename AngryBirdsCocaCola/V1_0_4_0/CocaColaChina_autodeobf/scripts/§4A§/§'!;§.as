package §4A§
{
   import §&!L§.b2Vec2;
   import §-v§.§,!1§;
   import §3f§.b2DebugDraw;
   import §3f§.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §'!;§
   {
      
      public static const §'!J§:Number = 1 / 30;
      
      public static const §4<§:int = 10;
      
      public static const §4I§:Boolean = false;
      
      public static const §#q§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §1G§:Boolean = true;
      
      public var §-!D§:§3!]§;
      
      public var § !=§:Sprite;
      
      private var §=c§:b2DebugDraw;
      
      public var mLevelMain:§&_§;
      
      public var §3!,§:Number;
      
      private var §5p§:Number;
      
      private var §,!'§:int;
      
      public function §'!;§(param1:§&_§)
      {
         super();
         this.mLevelMain = param1;
         this.§2!0§();
      }
      
      public function get §[X§() : int
      {
         return this.§,!'§;
      }
      
      public function get §2I§() : Number
      {
         return this.§5p§;
      }
      
      private function §2!0§() : void
      {
         this.§-!D§ = new §3!]§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§1G§);
         this.mWorld.§&!-§(this.§-!D§);
      }
      
      public function clear() : void
      {
         this.mWorld.§&!-§(null);
         this.§-!D§ = null;
         if(§4I§)
         {
            this.§ !=§.graphics.clear();
         }
         this.§ !=§ = null;
         this.mWorld.§5o§();
         this.mWorld = null;
      }
      
      public function §^w§() : void
      {
         if(!§4I§)
         {
         }
      }
      
      public function §'Q§(param1:Number, param2:Number) : void
      {
         if(§4I§)
         {
            this.§ !=§.x = -param1;
            this.§ !=§.y = -param2;
         }
      }
      
      public function §%A§(param1:Number) : Number
      {
         this.§5p§ = §'!J§;
         var _loc2_:int = this.§47§(param1);
         if(_loc2_ > §4<§)
         {
            _loc2_ = §4<§;
         }
         this.§[!K§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§5p§ * 1000;
         }
         return param1;
      }
      
      public function §[!K§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§3!,§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§,!'§;
            _loc5_ = 0;
            if(§#q§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§'j§(this.§5p§,10,10);
            this.mWorld.§5o§();
            this.§3!,§ += this.§5p§ * 1000;
            if(§#q§)
            {
               §,!1§.§2O§.§<!B§("Box2D",getTimer() - _loc5_);
            }
            this.mLevelMain.§;7§(this.§5p§);
            _loc4_++;
         }
      }
      
      private function §47§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§5p§ * 1000;
         }
         return _loc2_;
      }
   }
}
