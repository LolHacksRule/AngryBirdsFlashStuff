package §[B§
{
   import §&!M§.b2DebugDraw;
   import §&!M§.b2World;
   import §3!t§.b2Vec2;
   import §7"1§.§%W§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class §-"&§
   {
      
      public static const §<!$§:Number = 1 / 30;
      
      public static const §4!W§:int = 10;
      
      public static const §6I§:Boolean = true;
       
      
      public var §4!o§:b2World;
      
      private var §<D§:Boolean = true;
      
      public var §8!'§:§!-§;
      
      public var §@!j§:Sprite;
      
      private var §2"3§:b2DebugDraw;
      
      private var §<!N§:Boolean = false;
      
      public var §]!3§:§"d§;
      
      public var §]`§:Number;
      
      private var §1!7§:Number;
      
      private var §3F§:int;
      
      public function §-"&§(param1:§"d§)
      {
         super();
         this.§]!3§ = param1;
         this.§-!;§();
      }
      
      public function get §2!N§() : int
      {
         return this.§3F§;
      }
      
      public function get §super§() : Number
      {
         return this.§1!7§;
      }
      
      private function §-!;§() : void
      {
         this.§8!'§ = new §!-§(this);
         this.§4!o§ = new b2World(new b2Vec2(0,20),this.§<D§);
         this.§4!o§.§4r§(this.§8!'§);
      }
      
      public function clear() : void
      {
         this.§4!o§.§4r§(null);
         this.§8!'§ = null;
         if(this.§<!N§)
         {
            this.§@!j§.graphics.clear();
         }
         this.§@!j§ = null;
         this.§4!o§.§?!a§();
         this.§4!o§ = null;
      }
      
      public function §]!l§() : void
      {
         if(this.§<!N§)
         {
            this.§4!o§.§>!q§();
            this.§@!j§.parent.setChildIndex(this.§@!j§,this.§@!j§.parent.numChildren - 1);
         }
      }
      
      public function §4K§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Point = null;
         if(this.§<!N§)
         {
            _loc4_ = §%W§.§5"8§.§!C§(0,0);
            this.§@!j§.x = _loc4_.x;
            this.§@!j§.y = _loc4_.y;
            this.§2"3§.§[!s§(1 / §"d§.§2!]§ * param3);
         }
      }
      
      public function §<T§(param1:Number) : Number
      {
         this.§1!7§ = §<!$§;
         var _loc2_:int = this.§`!;§(param1);
         if(_loc2_ > §4!W§)
         {
            _loc2_ = §4!W§;
         }
         this.§6!B§(_loc2_);
         while(param1 > 0)
         {
            param1 -= this.§1!7§ * 1000;
         }
         return param1;
      }
      
      public function §6!B§(param1:int) : void
      {
         var _loc5_:Number = NaN;
         this.§]`§ = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            ++this.§3F§;
            _loc5_ = 0;
            if(§6I§)
            {
               _loc5_ = getTimer();
            }
            this.§4!o§.§;y§(this.§1!7§,10,10);
            this.§4!o§.§?!a§();
            this.§]`§ += this.§1!7§ * 1000;
            if(§6I§)
            {
               §%W§.§=X§.§9!0§("Box2D",getTimer() - _loc5_);
            }
            this.§]!3§.§+H§(this.§1!7§);
            _loc4_++;
         }
      }
      
      private function §`!;§(param1:Number) : int
      {
         var _loc2_:int = 0;
         while(param1 > 0)
         {
            _loc2_++;
            param1 -= this.§1!7§ * 1000;
         }
         return _loc2_;
      }
      
      public function set §2!X§(param1:Boolean) : void
      {
         if(this.§4!o§ == null)
         {
            return;
         }
         if(param1)
         {
            if(!this.§<!N§)
            {
               if(!this.§@!j§ && !this.§2"3§)
               {
                  this.§@!j§ = new Sprite();
                  this.§2"3§ = new b2DebugDraw();
                  this.§2"3§.§#!W§(b2DebugDraw.§8!B§);
                  this.§2"3§.§#!W§(b2DebugDraw.§,V§);
                  this.§2"3§.§#!W§(b2DebugDraw.§9Z§);
                  this.§2"3§.§3";§(0.3);
                  this.§2"3§.§?!k§(1);
                  this.§@!j§.mouseEnabled = false;
                  this.§2"3§.§]!<§(this.§@!j§);
                  this.§]!3§.stage.addChild(this.§@!j§);
                  this.§4!o§.§0!d§(this.§2"3§);
               }
            }
         }
         this.§<!N§ = param1;
      }
      
      public function get §2!X§() : Boolean
      {
         return this.§<!N§;
      }
      
      public function get §8z§() : b2DebugDraw
      {
         return this.§2"3§;
      }
      
      public function §3!x§() : void
      {
         if(this.§2"3§)
         {
            this.§@!j§.graphics.clear();
         }
      }
   }
}
