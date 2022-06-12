package §-!5§
{
   import §-=§.§8"1§;
   import §1!N§.§"!k§;
   import §3!t§.b2Transform;
   import §3!t§.b2Vec2;
   import §4!#§.§[R§;
   import §@!i§.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §4e§:Point;
      
      private var § !7§:b2Vec2;
      
      private var §`f§:Number;
      
      private var §8!D§:Rectangle;
      
      private var §4!Y§:b2Vec2;
      
      private var mName:String;
      
      private var §]!U§:b2Transform;
      
      private var §+;§:Sprite;
      
      private var §1!]§:§"!k§;
      
      private var §0!^§:uint = 16777215;
      
      private var §,f§:uint;
      
      private const §6t§:uint = 14218751;
      
      private const §8s§:uint = 16237696;
      
      private const §-"6§:uint = 13882323;
      
      private var §9!x§:uint = 12318377;
      
      public function GhostObject(param1:§"!k§)
      {
         this.§,f§ = this.§0!^§;
         super();
         this.§+;§ = param1.§'!%§();
         this.§4e§ = new Point(this.§+;§.x,this.§+;§.y);
         this.§ !7§ = param1.§2d§();
         this.§`f§ = this.§+;§.rotation;
         this.§8!D§ = param1.§#1§();
         this.§4!Y§ = param1.getCenter();
         this.mName = param1.getName();
         this.§]!U§ = param1.§#!p§();
         this.§-"!§(this.mName);
      }
      
      public function refresh(param1:§[R§, param2:Vector.<§"!k§>) : void
      {
         var _loc3_:§"!k§ = null;
         if(this.§1!]§ != null)
         {
            _loc3_ = this.§1!]§;
            this.§-!g§();
            if(!this.§1!]§)
            {
               param2.splice(param2.indexOf(_loc3_),1);
            }
            dispatchEvent(new §8"1§(§8"1§.CHANGE));
         }
      }
      
      public function §"v§(param1:Vector.<§"!k§>, param2:Vector.<§"!k§>) : void
      {
         var _loc3_:§"!k§ = null;
         this.§-!g§();
         if(this.§1!]§ != null)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            if(!(param2.indexOf(_loc3_) >= 0 || _loc3_.getName() != this.mName))
            {
               if(this.§-!s§(_loc3_))
               {
                  param2.push(_loc3_);
                  _loc3_.§%!x§(this.§]!U§);
                  this.§1!]§ = _loc3_;
                  dispatchEvent(new §8"1§(§8"1§.CHANGE));
                  break;
               }
            }
         }
      }
      
      private function §-!g§() : void
      {
         if(this.§1!]§ != null)
         {
            if(!this.§-!s§(this.§1!]§))
            {
               this.§1!]§ = null;
               dispatchEvent(new §8"1§(§8"1§.CHANGE));
            }
         }
      }
      
      private function §-!s§(param1:§"!k§) : Boolean
      {
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         _loc2_.§;!Y§(this.§4!Y§);
         return _loc2_.§=U§() < Math.max(this.§8!D§.width,this.§8!D§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§+;§;
      }
      
      public function get object() : §"!k§
      {
         return this.§1!]§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§4e§.x;
      }
      
      public function get y() : Number
      {
         return this.§4e§.y;
      }
      
      public function get §+!L§() : Number
      {
         return this.§ !7§.x;
      }
      
      public function get §5"!§() : Number
      {
         return this.§ !7§.y;
      }
      
      public function get rotation() : Number
      {
         return this.§`f§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§]!U§;
      }
      
      public function get §7h§() : Boolean
      {
         return this.§1!]§ != null;
      }
      
      public function get borderColor() : uint
      {
         return this.§,f§;
      }
      
      private function §-"!§(param1:String) : void
      {
         if(param1.indexOf("STONE") != -1)
         {
            this.§,f§ = this.§-"6§;
         }
         else if(param1.indexOf("WOOD") != -1)
         {
            this.§,f§ = this.§8s§;
         }
         else if(param1.indexOf("ICE") != -1)
         {
            this.§,f§ = this.§6t§;
         }
         else if(param1.indexOf("PIG") != -1)
         {
            this.§,f§ = this.§9!x§;
         }
      }
   }
}
