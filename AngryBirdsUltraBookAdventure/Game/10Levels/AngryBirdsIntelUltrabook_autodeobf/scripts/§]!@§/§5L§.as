package §]!@§
{
   import §>!8§.b2Vec2;
   import §>!L§.b2DebugDraw;
   import §>!L§.b2World;
   import §?!Y§.§`S§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §5L§
   {
      
      public static const §#H§:Number = 1 / 30;
      
      public static const §]! §:int = 10;
      
      public static const §8[§:Boolean = false;
      
      public static const §+!S§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §2#§:Boolean = true;
      
      public var §#!h§:§`!=§;
      
      public var §4>§:Sprite;
      
      private var §5P§:b2DebugDraw;
      
      public var §`s§:LevelMain;
      
      public var §0L§:Number;
      
      private var §8j§:Number;
      
      private var §`!D§:int;
      
      public function §5L§(param1:LevelMain)
      {
         super();
         this.§`s§ = param1;
         this.§'!!§();
      }
      
      public function get §8!?§() : int
      {
         return this.§`!D§;
      }
      
      public function get §7!9§() : Number
      {
         return this.§8j§;
      }
      
      private function §'!!§() : void
      {
         this.§#!h§ = new §`!=§(this);
         this.mWorld = new b2World(new b2Vec2(0,20),this.§2#§);
         this.mWorld.§;!M§(this.§#!h§);
         if(§8[§)
         {
            this.mWorld.§6'§(true);
            this.§4>§ = new Sprite();
            this.§5P§ = new b2DebugDraw();
            this.§5P§.§#l§(b2DebugDraw.§,x§);
            this.§5P§.§#l§(b2DebugDraw.§^!a§);
            this.§5P§.§#l§(b2DebugDraw.§`h§);
            this.§5P§.§"!J§(1 / LevelMain.§@!d§);
            this.§5P§.§,c§(0.3);
            this.§5P§.§9'§(1);
            this.§5P§.§=Z§(this.§4>§);
            this.§`s§.stage.addChild(this.§4>§);
            this.mWorld.§"5§(this.§5P§);
         }
      }
      
      public function clear() : void
      {
         this.mWorld.§;!M§(null);
         this.§#!h§ = null;
         if(§8[§)
         {
            this.§4>§.graphics.clear();
         }
         this.§4>§ = null;
         this.mWorld.§^z§();
         this.mWorld = null;
      }
      
      public function §0!^§() : void
      {
         if(§8[§)
         {
            this.mWorld.§!!9§();
            this.§4>§.parent.setChildIndex(this.§4>§,this.§4>§.parent.numChildren - 1);
         }
      }
      
      public function §6!H§(param1:Number, param2:Number, param3:Number) : void
      {
         if(§8[§)
         {
            this.§4>§.x = -param1;
            this.§4>§.y = -param2;
         }
      }
      
      public function §&!D§(param1:Number) : Number
      {
         this.§8j§ = §#H§;
         var _loc2_:int = this.§7!-§(param1);
         if(_loc2_ > §]! §)
         {
            _loc2_ = §]! §;
         }
         this.§'6§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§8j§ * 1000;
         }
         return param1;
      }
      
      public function §'6§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§0L§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§`!D§;
            _loc5_ = 0;
            if(§+!S§)
            {
               _loc5_ = getTimer();
            }
            this.mWorld.§<!;§(this.§8j§,10,10);
            this.mWorld.§^z§();
            this.§0L§ += this.§8j§ * 1000;
            if(§+!S§)
            {
               §`S§.§5I§.§=<§("Box2D",getTimer() - _loc5_);
            }
            this.§`s§.handleEngineUpdateStep(this.§8j§);
            _loc4_++;
         }
      }
      
      private function §7!-§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§8j§ * 1000;
         }
         return _loc2_;
      }
   }
}
