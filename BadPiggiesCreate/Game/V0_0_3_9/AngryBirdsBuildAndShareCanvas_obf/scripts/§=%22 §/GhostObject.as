package §=" §
{
   import §%%§.§7!O§;
   import §-!G§.b2Transform;
   import §-!G§.b2Vec2;
   import §5!k§.§6"6§;
   import §7q§.Sprite;
   import §]r§.§2"%§;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §[!o§:Point;
      
      private var §3!L§:b2Vec2;
      
      private var §-3§:Number;
      
      private var §47§:Rectangle;
      
      private var §="-§:b2Vec2;
      
      private var mName:String;
      
      private var §^C§:b2Transform;
      
      private var §5H§:Sprite;
      
      private var §6f§:§7!O§;
      
      private var §[C§:uint = 16777215;
      
      private var §]u§:uint;
      
      private const §#J§:uint = 14218751;
      
      private const §48§:uint = 16237696;
      
      private const §>!H§:uint = 13882323;
      
      private var §"!$§:uint = 12318377;
      
      public function GhostObject(param1:§7!O§)
      {
         this.§]u§ = this.§[C§;
         super();
         this.§5H§ = param1.§4!^§();
         this.§[!o§ = new Point(this.§5H§.x,this.§5H§.y);
         this.§3!L§ = param1.§"B§();
         this.§-3§ = this.§5H§.rotation;
         this.§47§ = param1.§7n§();
         this.§="-§ = param1.getCenter();
         this.mName = param1.getName();
         this.§^C§ = param1.§#!]§();
         this.§=1§(this.mName);
      }
      
      public function refresh(param1:§2"%§, param2:Vector.<§7!O§>) : void
      {
         var _loc3_:§7!O§ = null;
         if(this.§6f§ != null)
         {
            _loc3_ = this.§6f§;
            this.§]+§();
            if(!this.§6f§)
            {
               param2.splice(param2.indexOf(_loc3_),1);
            }
            dispatchEvent(new §6"6§(§6"6§.CHANGE));
         }
      }
      
      public function §9"'§(param1:Vector.<§7!O§>, param2:Vector.<§7!O§>) : void
      {
         var _loc3_:§7!O§ = null;
         this.§]+§();
         if(this.§6f§ != null)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            if(!(param2.indexOf(_loc3_) >= 0 || _loc3_.getName() != this.mName))
            {
               if(this.§0A§(_loc3_))
               {
                  param2.push(_loc3_);
                  _loc3_.§!!l§(this.§^C§);
                  this.§6f§ = _loc3_;
                  dispatchEvent(new §6"6§(§6"6§.CHANGE));
                  break;
               }
            }
         }
      }
      
      private function §]+§() : void
      {
         if(this.§6f§ != null)
         {
            if(!this.§0A§(this.§6f§))
            {
               this.§6f§ = null;
               dispatchEvent(new §6"6§(§6"6§.CHANGE));
            }
         }
      }
      
      private function §0A§(param1:§7!O§) : Boolean
      {
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         _loc2_.§^!d§(this.§="-§);
         return _loc2_.§%!G§() < Math.max(this.§47§.width,this.§47§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§5H§;
      }
      
      public function get object() : §7!O§
      {
         return this.§6f§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§[!o§.x;
      }
      
      public function get y() : Number
      {
         return this.§[!o§.y;
      }
      
      public function get §^"$§() : Number
      {
         return this.§3!L§.x;
      }
      
      public function get §0U§() : Number
      {
         return this.§3!L§.y;
      }
      
      public function get rotation() : Number
      {
         return this.§-3§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§^C§;
      }
      
      public function get §=r§() : Boolean
      {
         return this.§6f§ != null;
      }
      
      public function get borderColor() : uint
      {
         return this.§]u§;
      }
      
      private function §=1§(param1:String) : void
      {
         if(param1.indexOf("STONE") != -1)
         {
            this.§]u§ = this.§>!H§;
         }
         else if(param1.indexOf("WOOD") != -1)
         {
            this.§]u§ = this.§48§;
         }
         else if(param1.indexOf("ICE") != -1)
         {
            this.§]u§ = this.§#J§;
         }
         else if(param1.indexOf("PIG") != -1)
         {
            this.§]u§ = this.§"!$§;
         }
      }
   }
}
