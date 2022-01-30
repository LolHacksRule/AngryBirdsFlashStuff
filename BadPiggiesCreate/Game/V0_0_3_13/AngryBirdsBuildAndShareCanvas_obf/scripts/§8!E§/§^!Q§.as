package §8!E§
{
   import §1!z§.b2Vec2;
   import §7!q§.b2DebugDraw;
   import §7!q§.b2World;
   import §=!<§.§5!U§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §^!Q§
   {
      
      public static const §&a§:Number = 1 / 30;
      
      public static const §9">§:int = 10;
      
      public static const §@T§:Boolean = true;
       
      
      public var §2!J§:b2World;
      
      private var §"7§:Boolean = true;
      
      public var §3!`§:§-n§;
      
      public var §,$§:Sprite;
      
      private var §?!o§:b2DebugDraw;
      
      private var §4B§:Boolean = false;
      
      public var §7!;§:§?!X§;
      
      public var §^K§:Number;
      
      private var §+E§:Number;
      
      private var §0"'§:int;
      
      public function §^!Q§(param1:§?!X§)
      {
         super();
         this.§7!;§ = param1;
         this.§&-§();
      }
      
      public function get §"!v§() : int
      {
         return this.§0"'§;
      }
      
      public function get §5"2§() : Number
      {
         return this.§+E§;
      }
      
      private function §&-§() : void
      {
         this.§3!`§ = new §-n§(this);
         this.§2!J§ = new b2World(new b2Vec2(0,20),this.§"7§);
         this.§2!J§.§ !F§(this.§3!`§);
      }
      
      public function clear() : void
      {
         this.§2!J§.§ !F§(null);
         this.§3!`§ = null;
         if(this.§4B§)
         {
            this.§,$§.graphics.clear();
         }
         this.§,$§ = null;
         this.§2!J§.§'h§();
         this.§2!J§ = null;
      }
      
      public function §[!o§() : void
      {
         if(this.§4B§)
         {
            this.§2!J§.§ !n§();
            this.§,$§.parent.setChildIndex(this.§,$§,this.§,$§.parent.numChildren - 1);
         }
      }
      
      public function §=!0§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§4B§)
         {
            _loc4_ = §5!U§.§,!E§.§6!;§(0,0);
            this.§,$§.x = _loc4_.x;
            this.§,$§.y = _loc4_.y;
            this.§?!o§.§3"=§(1 / §?!X§.§57§ * param3);
         }
      }
      
      public function §9!A§(param1:Number) : Number
      {
         this.§+E§ = §&a§;
         var _loc2_:int = this.§==§(param1);
         if(_loc2_ > §9">§)
         {
            _loc2_ = §9">§;
         }
         this.§&M§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§+E§ * 1000;
         }
         return param1;
      }
      
      public function §&M§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§^K§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§0"'§;
            _loc5_ = 0;
            if(§@T§)
            {
               _loc5_ = getTimer();
            }
            this.§2!J§.§9>§(this.§+E§,10,10);
            this.§2!J§.§'h§();
            this.§^K§ += this.§+E§ * 1000;
            if(§@T§)
            {
               §5!U§.§+p§.§&!I§("Box2D",getTimer() - _loc5_);
            }
            this.§7!;§.§;!p§(this.§+E§);
            _loc4_++;
         }
      }
      
      private function §==§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§+E§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §8!a§(param1:Boolean) : void
      {
         if(this.§2!J§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§4B§)
            {
               if(!this.§,$§ && !this.§?!o§)
               {
                  this.§,$§ = new Sprite();
                  this.§?!o§ = new b2DebugDraw();
                  this.§?!o§.§;D§(b2DebugDraw.§2!L§);
                  this.§?!o§.§;D§(b2DebugDraw.§-!U§);
                  this.§?!o§.§;D§(b2DebugDraw.§7U§);
                  this.§?!o§.§>!j§(0.3);
                  this.§?!o§.§2`§(1);
                  this.§,$§.mouseEnabled = false;
                  this.§?!o§.§`!F§(this.§,$§);
                  this.§7!;§.stage.addChild(this.§,$§);
                  this.§2!J§.§`E§(this.§?!o§);
               }
            }
         }
         this.§4B§ = param1;
      }
      
      public function get §8!a§() : Boolean
      {
         return this.§4B§;
      }
      
      public function get §&!=§() : b2DebugDraw
      {
         return this.§?!o§;
      }
      
      public function §%!>§() : void
      {
         if(this.§?!o§)
         {
            this.§,$§.graphics.clear();
         }
      }
   }
}
