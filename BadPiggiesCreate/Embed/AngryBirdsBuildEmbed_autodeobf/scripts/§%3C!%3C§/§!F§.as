package §<!<§
{
   import § !t§.b2DebugDraw;
   import § !t§.b2World;
   import §<!B§.b2Vec2;
   import §?!-§.§'!V§;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class §!F§
   {
      
      public static const §4!c§:Number = 1 / 30;
      
      public static const §8!-§:int = 10;
      
      public static const §#!m§:Boolean = false;
      
      public static const §<!a§:Boolean = true;
       
      
      public var §&4§:b2World;
      
      private var §=E§:Boolean = true;
      
      public var §"K§:§=H§;
      
      public var §2o§:Sprite;
      
      private var §2!U§:b2DebugDraw;
      
      public var §-n§:§7E§;
      
      public var §2![§:Number;
      
      private var §%y§:Number;
      
      private var §?!"§:int;
      
      public function §!F§(param1:§7E§)
      {
         super();
         this.§-n§ = param1;
         this.§^!;§();
      }
      
      public function get §`V§() : int
      {
         return this.§?!"§;
      }
      
      public function get §6!"§() : Number
      {
         return this.§%y§;
      }
      
      private function §^!;§() : void
      {
         this.§"K§ = new §=H§(this);
         this.§&4§ = new b2World(new b2Vec2(0,20),this.§=E§);
         this.§&4§.§#!i§(this.§"K§);
      }
      
      public function clear() : void
      {
         this.§&4§.§#!i§(null);
         this.§"K§ = null;
         if(§#!m§)
         {
            this.§2o§.graphics.clear();
         }
         this.§2o§ = null;
         this.§&4§.§;t§();
         this.§&4§ = null;
      }
      
      public function §3v§() : void
      {
         if(!§#!m§)
         {
         }
      }
      
      public function §[t§(param1:Number, param2:Number) : void
      {
         if(§#!m§)
         {
            this.§2o§.x = -param1;
            this.§2o§.y = -param2;
         }
      }
      
      public function §'!'§(param1:Number) : Number
      {
         this.§%y§ = §4!c§;
         var _loc2_:int = this.§@j§(param1);
         if(_loc2_ > §8!-§)
         {
            _loc2_ = §8!-§;
         }
         this.§[!T§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§%y§ * 1000;
         }
         return param1;
      }
      
      public function §[!T§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§2![§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§?!"§;
            _loc5_ = 0;
            if(§<!a§)
            {
               _loc5_ = getTimer();
            }
            this.§&4§.§&E§(this.§%y§,10,10);
            this.§&4§.§;t§();
            this.§2![§ += this.§%y§ * 1000;
            if(§<!a§)
            {
               §'!V§.§'!s§.§;!r§("Box2D",getTimer() - _loc5_);
            }
            this.§-n§.§&! §(this.§%y§);
            _loc4_++;
         }
      }
      
      private function §@j§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§%y§ * 1000;
         }
         return _loc2_;
      }
   }
}
