package § !R§
{
   import §1!z§.b2Transform;
   import §1!z§.b2Vec2;
   import §7!g§.§?!i§;
   import §=%§.§<A§;
   import §?"&§.§5b§;
   import §`L§.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §?+§:Point;
      
      private var §!a§:b2Vec2;
      
      private var §%B§:Number;
      
      private var §!"8§:Rectangle;
      
      private var §,!O§:b2Vec2;
      
      private var mName:String;
      
      private var §[!;§:b2Transform;
      
      private var §`B§:Sprite;
      
      private var §4"3§:§<A§;
      
      private var §'b§:uint = 16777215;
      
      private var § u§:uint;
      
      private const §=y§:uint = 14218751;
      
      private const §@!J§:uint = 16237696;
      
      private const §?"<§:uint = 13882323;
      
      private var §5!S§:uint = 12318377;
      
      public function GhostObject(param1:§<A§)
      {
         this.§ u§ = this.§'b§;
         super();
         this.§`B§ = param1.§?]§();
         this.§?+§ = new Point(this.§`B§.x,this.§`B§.y);
         this.§!a§ = param1.§@!0§();
         this.§%B§ = this.§`B§.rotation;
         this.§!"8§ = param1.§5!3§();
         this.§,!O§ = param1.getCenter();
         this.mName = param1.getName();
         this.§[!;§ = param1.§1!U§();
         this.§+"3§(this.mName);
      }
      
      public function refresh(param1:§5b§, param2:Vector.<§<A§>) : void
      {
         var _loc3_:§<A§ = null;
         if(this.§4"3§ != null)
         {
            _loc3_ = this.§4"3§;
            this.§&r§();
            if(!this.§4"3§)
            {
               param2.splice(param2.indexOf(_loc3_),1);
            }
            dispatchEvent(new §?!i§(§?!i§.CHANGE));
         }
      }
      
      public function §-!$§(param1:Vector.<§<A§>, param2:Vector.<§<A§>) : void
      {
         var _loc3_:§<A§ = null;
         this.§&r§();
         if(this.§4"3§ != null)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            if(!(param2.indexOf(_loc3_) >= 0 || _loc3_.getName() != this.mName))
            {
               if(this.§#"$§(_loc3_))
               {
                  param2.push(_loc3_);
                  _loc3_.§;!b§(this.§[!;§);
                  this.§4"3§ = _loc3_;
                  dispatchEvent(new §?!i§(§?!i§.CHANGE));
                  break;
               }
            }
         }
      }
      
      private function §&r§() : void
      {
         if(this.§4"3§ != null)
         {
            if(!this.§#"$§(this.§4"3§))
            {
               this.§4"3§ = null;
               dispatchEvent(new §?!i§(§?!i§.CHANGE));
            }
         }
      }
      
      private function §#"$§(param1:§<A§) : Boolean
      {
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         _loc2_.§#!3§(this.§,!O§);
         return _loc2_.§<_§() < Math.max(this.§!"8§.width,this.§!"8§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`B§;
      }
      
      public function get object() : §<A§
      {
         return this.§4"3§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§?+§.x;
      }
      
      public function get y() : Number
      {
         return this.§?+§.y;
      }
      
      public function get §=",§() : Number
      {
         return this.§!a§.x;
      }
      
      public function get §!;§() : Number
      {
         return this.§!a§.y;
      }
      
      public function get rotation() : Number
      {
         return this.§%B§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§[!;§;
      }
      
      public function get §="0§() : Boolean
      {
         return this.§4"3§ != null;
      }
      
      public function get borderColor() : uint
      {
         return this.§ u§;
      }
      
      private function §+"3§(param1:String) : void
      {
         if(param1.indexOf("STONE") != -1)
         {
            this.§ u§ = this.§?"<§;
         }
         else if(param1.indexOf("WOOD") != -1)
         {
            this.§ u§ = this.§@!J§;
         }
         else if(param1.indexOf("ICE") != -1)
         {
            this.§ u§ = this.§=y§;
         }
         else if(param1.indexOf("PIG") != -1)
         {
            this.§ u§ = this.§5!S§;
         }
      }
   }
}
