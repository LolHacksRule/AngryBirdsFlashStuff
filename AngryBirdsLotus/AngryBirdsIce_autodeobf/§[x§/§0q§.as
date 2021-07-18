package §[x§
{
   import §!Y§.§[o§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2DebugDraw;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §0q§
   {
      
      public static const §7<§:Number = 1 / 30;
      
      public static const §;!§:int = 10;
      
      public static const §;K§:Boolean = false;
      
      public static const §1!A§:Boolean = true;
       
      
      public var §#_§:b2World;
      
      private var §?!F§:Boolean = true;
      
      public var §@!5§:§'T§;
      
      public var §super§:Sprite;
      
      private var §+!;§:b2DebugDraw;
      
      public var §1! §:§2^§;
      
      public var §2<§:Number;
      
      private var §]s§:Number;
      
      private var §"&§:int;
      
      public function §0q§(param1:§2^§)
      {
         super();
         this.§1! § = param1;
         this.§6;§();
      }
      
      public function get §-p§() : int
      {
         return this.§"&§;
      }
      
      public function get §%Q§() : Number
      {
         return this.§]s§;
      }
      
      private function §6;§() : void
      {
         this.§@!5§ = new §'T§(this);
         this.§#_§ = new b2World(new b2Vec2(0,20),this.§?!F§);
         this.§#_§.SetContactListener(this.§@!5§);
      }
      
      public function clear() : void
      {
         this.§#_§.SetContactListener(null);
         this.§@!5§ = null;
         if(§;K§)
         {
            this.§super§.graphics.clear();
         }
         this.§super§ = null;
         this.§#_§.ClearForces();
         this.§#_§ = null;
      }
      
      public function §3a§() : void
      {
         if(!§;K§)
         {
         }
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         if(§;K§)
         {
            this.§super§.x = -param1;
            this.§super§.y = -param2;
         }
      }
      
      public function §!5§(param1:Number) : Number
      {
         this.§]s§ = §7<§;
         var _loc2_:int = this.§,#§(param1);
         if(_loc2_ > §;!§)
         {
            _loc2_ = §;!§;
         }
         this.§^Q§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§]s§ * 1000;
         }
         return param1;
      }
      
      public function §^Q§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§2<§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§"&§;
            _loc5_ = 0;
            if(§1!A§)
            {
               _loc5_ = getTimer();
            }
            this.§#_§.Step(this.§]s§,10,10);
            this.§#_§.ClearForces();
            this.§2<§ += this.§]s§ * 1000;
            if(§1!A§)
            {
               §[o§.§#[§.§?1§("Box2D",getTimer() - _loc5_);
            }
            this.§1! §.§@p§(this.§]s§);
            _loc4_++;
         }
      }
      
      private function §,#§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§]s§ * 1000;
         }
         return _loc2_;
      }
   }
}
