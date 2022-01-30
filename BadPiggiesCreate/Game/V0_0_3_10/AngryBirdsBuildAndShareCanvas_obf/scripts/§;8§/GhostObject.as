package §;8§
{
   import §3;§.§#!C§;
   import §="§.§="-§;
   import §?!h§.b2Transform;
   import §?!h§.b2Vec2;
   import §?^§.§0Q§;
   import §^I§.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §"T§:Point;
      
      private var §=" §:b2Vec2;
      
      private var § get§:Number;
      
      private var § ;§:Rectangle;
      
      private var §1!U§:b2Vec2;
      
      private var mName:String;
      
      private var §@'§:b2Transform;
      
      private var §;!E§:Sprite;
      
      private var §+!P§:§0Q§;
      
      private var §7!G§:uint = 16777215;
      
      private var §"!^§:uint;
      
      private const §#!"§:uint = 14218751;
      
      private const §?j§:uint = 16237696;
      
      private const §,!M§:uint = 13882323;
      
      private var §+"'§:uint = 12318377;
      
      public function GhostObject(param1:§0Q§)
      {
         this.§"!^§ = this.§7!G§;
         super();
         this.§;!E§ = param1.§]"#§();
         this.§"T§ = new Point(this.§;!E§.x,this.§;!E§.y);
         this.§=" § = param1.§9b§();
         this.§ get§ = this.§;!E§.rotation;
         this.§ ;§ = param1.§^g§();
         this.§1!U§ = param1.getCenter();
         this.mName = param1.getName();
         this.§@'§ = param1.§8y§();
         this.§1!?§(this.mName);
      }
      
      public function refresh(param1:§="-§, param2:Vector.<§0Q§>) : void
      {
         var _loc3_:§0Q§ = null;
         if(this.§+!P§ != null)
         {
            _loc3_ = this.§+!P§;
            this.§4!m§();
            if(!this.§+!P§)
            {
               param2.splice(param2.indexOf(_loc3_),1);
            }
            dispatchEvent(new §#!C§(§#!C§.CHANGE));
         }
      }
      
      public function §=O§(param1:Vector.<§0Q§>, param2:Vector.<§0Q§>) : void
      {
         var _loc3_:§0Q§ = null;
         this.§4!m§();
         if(this.§+!P§ != null)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            if(!(param2.indexOf(_loc3_) >= 0 || _loc3_.getName() != this.mName))
            {
               if(this.§3!0§(_loc3_))
               {
                  param2.push(_loc3_);
                  _loc3_.§&"2§(this.§@'§);
                  this.§+!P§ = _loc3_;
                  dispatchEvent(new §#!C§(§#!C§.CHANGE));
                  break;
               }
            }
         }
      }
      
      private function §4!m§() : void
      {
         if(this.§+!P§ != null)
         {
            if(!this.§3!0§(this.§+!P§))
            {
               this.§+!P§ = null;
               dispatchEvent(new §#!C§(§#!C§.CHANGE));
            }
         }
      }
      
      private function §3!0§(param1:§0Q§) : Boolean
      {
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         _loc2_.§2!P§(this.§1!U§);
         return _loc2_.§7!6§() < Math.max(this.§ ;§.width,this.§ ;§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§;!E§;
      }
      
      public function get object() : §0Q§
      {
         return this.§+!P§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§"T§.x;
      }
      
      public function get y() : Number
      {
         return this.§"T§.y;
      }
      
      public function get §,!b§() : Number
      {
         return this.§=" §.x;
      }
      
      public function get §%!s§() : Number
      {
         return this.§=" §.y;
      }
      
      public function get rotation() : Number
      {
         return this.§ get§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§@'§;
      }
      
      public function get §implements§() : Boolean
      {
         return this.§+!P§ != null;
      }
      
      public function get borderColor() : uint
      {
         return this.§"!^§;
      }
      
      private function §1!?§(param1:String) : void
      {
         if(param1.indexOf("STONE") != -1)
         {
            this.§"!^§ = this.§,!M§;
         }
         else if(param1.indexOf("WOOD") != -1)
         {
            this.§"!^§ = this.§?j§;
         }
         else if(param1.indexOf("ICE") != -1)
         {
            this.§"!^§ = this.§#!"§;
         }
         else if(param1.indexOf("PIG") != -1)
         {
            this.§"!^§ = this.§+"'§;
         }
      }
   }
}
