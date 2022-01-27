package §?!<§
{
   import §#!X§.b2DebugDraw;
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §+!9§.§;0§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §,p§
   {
      
      public static const §]!L§:Number = 1000 / 30;
      
      public static const §1!O§:int = 10;
      
      public static const §@8§:Boolean = false;
      
      public static const §%"C§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §5K§:Boolean = true;
      
      public var §3]§:§<_§;
      
      public var § "3§:Sprite;
      
      private var §!"F§:b2DebugDraw;
      
      public var §1!3§:§'!1§;
      
      public var §-T§:Number;
      
      private var §>!b§:Number;
      
      private var §+S§:int;
      
      public function §,p§(param1:§'!1§, param2:Number = 20)
      {
         super();
         this.§1!3§ = param1;
         this.§`!m§(param2);
      }
      
      public function get §8!R§() : int
      {
         return this.§+S§;
      }
      
      public function get §78§() : Number
      {
         return this.§>!b§;
      }
      
      private function §`!m§(param1:Number) : void
      {
         this.§3]§ = new §<_§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§5K§);
         this.mWorld.§'R§(this.§3]§);
      }
      
      public function clear() : void
      {
         this.mWorld.§'R§(null);
         this.§3]§ = null;
         if(§@8§)
         {
            this.§ "3§.graphics.clear();
         }
         this.§ "3§ = null;
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §3!!§() : void
      {
         if(!§@8§)
         {
         }
      }
      
      public function §%!2§(param1:Number, param2:Number) : void
      {
         if(§@8§)
         {
            this.§ "3§.x = -param1;
            this.§ "3§.y = -param2;
         }
      }
      
      public function §9S§(param1:Number) : Number
      {
         this.§>!b§ = §]!L§;
         var _loc2_:int = this.§?!>§(param1);
         if(_loc2_ > §1!O§)
         {
            _loc2_ = §1!O§;
         }
         this.§+">§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§>!b§;
         }
         return param1;
      }
      
      public function §+">§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§-T§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§+S§;
            _loc6_ = 0;
            if(§%"C§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§>!b§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§-T§ += this.§>!b§;
            if(§%"C§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§1!3§.§=v§(this.§>!b§);
            _loc5_++;
         }
         if(§%"C§)
         {
            §;0§.§]!8§.§^[§("Box2D",_loc4_);
         }
      }
      
      private function §?!>§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§>!b§;
         }
         return _loc2_;
      }
   }
}
