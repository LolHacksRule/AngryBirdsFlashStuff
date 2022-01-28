package §[!_§
{
   import §+!o§.§?"-§;
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §62§.§0!t§;
   import §7r§.§=q§;
   import §default§.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §with§:Point;
      
      private var §]u§:b2Vec2;
      
      private var §]$§:Number;
      
      private var §0#§:Rectangle;
      
      private var §,!S§:b2Vec2;
      
      private var mName:String;
      
      private var §2[§:b2Transform;
      
      private var §!&§:Sprite;
      
      private var §;6§:§=q§;
      
      private var §!3§:uint = 16777215;
      
      private var §^!5§:uint;
      
      private const §#"4§:uint = 14218751;
      
      private const §!!`§:uint = 16237696;
      
      private const §-!f§:uint = 13882323;
      
      private var §#7§:uint = 12318377;
      
      public function GhostObject(param1:§=q§)
      {
         this.§^!5§ = this.§!3§;
         super();
         this.§!&§ = param1.§7M§();
         this.§with§ = new Point(this.§!&§.x,this.§!&§.y);
         this.§]u§ = param1.§9!l§();
         this.§]$§ = this.§!&§.rotation;
         this.§0#§ = param1.§]!&§();
         this.§,!S§ = param1.getCenter();
         this.mName = param1.getName();
         this.§2[§ = param1.§[!M§();
         this.set(this.mName);
      }
      
      public function refresh(param1:§?"-§, param2:Vector.<§=q§>) : void
      {
         var _loc3_:§=q§ = null;
         if(this.§;6§ != null)
         {
            _loc3_ = this.§;6§;
            this.§8"<§();
            if(!this.§;6§)
            {
               param2.splice(param2.indexOf(_loc3_),1);
            }
            dispatchEvent(new §0!t§(§0!t§.CHANGE));
         }
      }
      
      public function §1!,§(param1:Vector.<§=q§>, param2:Vector.<§=q§>) : void
      {
         var _loc3_:§=q§ = null;
         this.§8"<§();
         if(this.§;6§ != null)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            if(!(param2.indexOf(_loc3_) >= 0 || _loc3_.getName() != this.mName))
            {
               if(this.§27§(_loc3_))
               {
                  param2.push(_loc3_);
                  _loc3_.§=!J§(this.§2[§);
                  this.§;6§ = _loc3_;
                  dispatchEvent(new §0!t§(§0!t§.CHANGE));
                  break;
               }
            }
         }
      }
      
      private function §8"<§() : void
      {
         if(this.§;6§ != null)
         {
            if(!this.§27§(this.§;6§))
            {
               this.§;6§ = null;
               dispatchEvent(new §0!t§(§0!t§.CHANGE));
            }
         }
      }
      
      private function §27§(param1:§=q§) : Boolean
      {
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         _loc2_.§5!]§(this.§,!S§);
         return _loc2_.§`g§() < Math.max(this.§0#§.width,this.§0#§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
      }
      
      public function get object() : §=q§
      {
         return this.§;6§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§with§.x;
      }
      
      public function get y() : Number
      {
         return this.§with§.y;
      }
      
      public function get §6!j§() : Number
      {
         return this.§]u§.x;
      }
      
      public function get §8i§() : Number
      {
         return this.§]u§.y;
      }
      
      public function get rotation() : Number
      {
         return this.§]$§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§2[§;
      }
      
      public function get §!6§() : Boolean
      {
         return this.§;6§ != null;
      }
      
      public function get borderColor() : uint
      {
         return this.§^!5§;
      }
      
      private function set(param1:String) : void
      {
         if(param1.indexOf("STONE") != -1)
         {
            this.§^!5§ = this.§-!f§;
         }
         else if(param1.indexOf("WOOD") != -1)
         {
            this.§^!5§ = this.§!!`§;
         }
         else if(param1.indexOf("ICE") != -1)
         {
            this.§^!5§ = this.§#"4§;
         }
         else if(param1.indexOf("PIG") != -1)
         {
            this.§^!5§ = this.§#7§;
         }
      }
   }
}
