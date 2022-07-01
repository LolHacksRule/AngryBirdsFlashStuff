package §6!D§
{
   import § ""§.§6!u§;
   import §+L§.b2Transform;
   import §+L§.b2Vec2;
   import §1!Y§.Sprite;
   import §;!§.§8V§;
   import §@!P§.§?"%§;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §1" §:Point;
      
      private var §0!M§:b2Vec2;
      
      private var §-U§:Number;
      
      private var §8"#§:Rectangle;
      
      private var §7!-§:b2Vec2;
      
      private var mName:String;
      
      private var §#!c§:b2Transform;
      
      private var § "5§:Sprite;
      
      private var §&!$§:§?"%§;
      
      private var §3t§:uint = 16777215;
      
      private var §-F§:uint;
      
      private const §+x§:uint = 14218751;
      
      private const §7?§:uint = 16237696;
      
      private const §%!G§:uint = 13882323;
      
      private var §+!G§:uint = 12318377;
      
      public function GhostObject(param1:§?"%§)
      {
         this.§-F§ = this.§3t§;
         super();
         this.§ "5§ = param1.§9!§();
         this.§1" § = new Point(this.§ "5§.x,this.§ "5§.y);
         this.§0!M§ = param1.§]>§();
         this.§-U§ = this.§ "5§.rotation;
         this.§8"#§ = param1.§[!V§();
         this.§7!-§ = param1.getCenter();
         this.mName = param1.getName();
         this.§#!c§ = param1.§'f§();
         this.§,"$§(this.mName);
      }
      
      public function refresh(param1:§6!u§, param2:Vector.<§?"%§>) : void
      {
         var _loc3_:§?"%§ = null;
         if(this.§&!$§ != null)
         {
            _loc3_ = this.§&!$§;
            this.§%!e§();
            if(!this.§&!$§)
            {
               param2.splice(param2.indexOf(_loc3_),1);
            }
            dispatchEvent(new §8V§(§8V§.CHANGE));
         }
      }
      
      public function § !j§(param1:Vector.<§?"%§>, param2:Vector.<§?"%§>) : void
      {
         var _loc3_:§?"%§ = null;
         this.§%!e§();
         if(this.§&!$§ != null)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            if(!(param2.indexOf(_loc3_) >= 0 || _loc3_.getName() != this.mName))
            {
               if(this.§5!i§(_loc3_))
               {
                  param2.push(_loc3_);
                  _loc3_.§[P§(this.§#!c§);
                  this.§&!$§ = _loc3_;
                  dispatchEvent(new §8V§(§8V§.CHANGE));
                  break;
               }
            }
         }
      }
      
      private function §%!e§() : void
      {
         if(this.§&!$§ != null)
         {
            if(!this.§5!i§(this.§&!$§))
            {
               this.§&!$§ = null;
               dispatchEvent(new §8V§(§8V§.CHANGE));
            }
         }
      }
      
      private function §5!i§(param1:§?"%§) : Boolean
      {
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         _loc2_.§'+§(this.§7!-§);
         return _loc2_.§9!5§() < Math.max(this.§8"#§.width,this.§8"#§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ "5§;
      }
      
      public function get object() : §?"%§
      {
         return this.§&!$§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§1" §.x;
      }
      
      public function get y() : Number
      {
         return this.§1" §.y;
      }
      
      public function get §%k§() : Number
      {
         return this.§0!M§.x;
      }
      
      public function get § "§() : Number
      {
         return this.§0!M§.y;
      }
      
      public function get rotation() : Number
      {
         return this.§-U§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§#!c§;
      }
      
      public function get §]"2§() : Boolean
      {
         return this.§&!$§ != null;
      }
      
      public function get borderColor() : uint
      {
         return this.§-F§;
      }
      
      private function §,"$§(param1:String) : void
      {
         if(param1.indexOf("STONE") != -1)
         {
            this.§-F§ = this.§%!G§;
         }
         else if(param1.indexOf("WOOD") != -1)
         {
            this.§-F§ = this.§7?§;
         }
         else if(param1.indexOf("ICE") != -1)
         {
            this.§-F§ = this.§+x§;
         }
         else if(param1.indexOf("PIG") != -1)
         {
            this.§-F§ = this.§+!G§;
         }
      }
   }
}
