package §^#>§
{
   import §+#$§.b2DebugDraw;
   import §+#$§.b2World;
   import §-!_§.§,#Q§;
   import §[R§.b2Vec2;
   import com.angrybirds.§,!q§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §^P§
   {
      
      public static const §7!x§:Number = 1000 / 30;
      
      public static const §!@§:int = 10;
      
      public static const §&"E§:Boolean = false;
      
      public static const §@!q§:Boolean = true;
       
      
      public var mWorld:b2World;
      
      private var §;!j§:Boolean = true;
      
      public var §<#<§:§1!y§;
      
      public var §&#?§:Sprite;
      
      private var §0!?§:b2DebugDraw;
      
      public var §2#G§:§#_§;
      
      public var §'"i§:Number;
      
      private var §8!x§:Number;
      
      private var §8"n§:int;
      
      private var §!!&§:Boolean = false;
      
      public function §^P§(param1:§#_§, param2:Number = 20)
      {
         super();
         this.§2#G§ = param1;
         this.§'!;§(param2);
         this.§9#%§ = §&"E§;
      }
      
      public function get §9o§() : int
      {
         return this.§8"n§;
      }
      
      public function get §^"B§() : Number
      {
         return this.§8!x§;
      }
      
      public function set §9#%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0!?§ = new b2DebugDraw();
            this.§0!?§.§%"%§(b2DebugDraw.§;#F§);
            this.§0!?§.§%"%§(b2DebugDraw.§>"v§);
            this.§0!?§.§%"%§(b2DebugDraw.§'"l§);
            this.§0!?§.§9!x§(0.7);
            this.§0!?§.§[#$§(1);
            if(!this.§&#?§)
            {
               this.§&#?§ = new Sprite();
               this.§&#?§.mouseEnabled = false;
               this.§2#G§.stage.addChild(this.§&#?§);
            }
            this.§0!?§.§6!v§(this.§&#?§);
            this.mWorld.§0=§(this.§0!?§);
         }
         else
         {
            if(this.§&#?§)
            {
               this.§2#G§.stage.removeChild(this.§&#?§);
               this.§&#?§ = null;
            }
            if(this.§0!?§)
            {
               this.mWorld.§0=§(null);
               this.§0!?§ = null;
            }
         }
         this.§!!&§ = param1;
      }
      
      private function §'!;§(param1:Number) : void
      {
         this.§<#<§ = new §1!y§(this);
         this.mWorld = new b2World(new b2Vec2(0,param1),this.§;!j§);
         this.mWorld.§4!O§(this.§<#<§);
      }
      
      public function clear() : void
      {
         this.mWorld.§4!O§(null);
         this.§<#<§ = null;
         if(this.§&#?§)
         {
            this.§2#G§.stage.removeChild(this.§&#?§);
            this.§&#?§.graphics.clear();
            this.§&#?§ = null;
         }
         this.mWorld.ClearForces();
         this.mWorld = null;
      }
      
      public function §+"$§() : void
      {
         if(this.§!!&§)
         {
            this.mWorld.§`!<§();
            this.§&#?§.parent.setChildIndex(this.§&#?§,this.§&#?§.parent.numChildren - 1);
         }
      }
      
      public function §'"0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Point = null;
         if(this.§!!&§)
         {
            _loc3_ = §,!q§.§9!,§.§@C§(0,0);
            this.§&#?§.x = _loc3_.x;
            this.§&#?§.y = _loc3_.y;
            this.§0!?§.§#!k§(1 / §#_§.§8]§ * §,#Q§.§ #b§);
         }
      }
      
      public function §2!3§(param1:Number) : Number
      {
         this.§8!x§ = §7!x§;
         var _loc2_:int = this.§'#^§(param1);
         if(_loc2_ > §!@§)
         {
            _loc2_ = §!@§;
         }
         this.§@!D§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§8!x§;
         }
         return param1;
      }
      
      public function §@!D§(param1:int) : void
      {
         var _loc6_:Number = NaN;
         this.§'"i§ = 0;
         var _loc4_:Number = 0;
         var _loc5_:int = 0;
         while(_loc5_ < param1)
         {
            ++this.§8"n§;
            _loc6_ = 0;
            if(§@!q§)
            {
               _loc6_ = getTimer();
            }
            this.mWorld.Step(this.§8!x§ / 1000,10,10);
            this.mWorld.ClearForces();
            this.§'"i§ += this.§8!x§;
            if(§@!q§)
            {
               _loc4_ += getTimer() - _loc6_;
            }
            this.§2#G§.handleEngineUpdateStep(this.§8!x§);
            _loc5_++;
         }
         if(§@!q§)
         {
            §,!q§.§!#=§.§""F§("Box2D",_loc4_);
         }
      }
      
      private function §'#^§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§8!x§;
         }
         return _loc2_;
      }
   }
}
