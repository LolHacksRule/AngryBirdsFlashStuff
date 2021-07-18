package §-&§
{
   import §"_§.§!"8§;
   import §&!P§.§^!!§;
   import §+!-§.Sprite;
   import §7t§.§7a§;
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §+<§:Point;
      
      private var §5!P§:b2Vec2;
      
      private var §0!>§:Number;
      
      private var §""+§:Rectangle;
      
      private var §8!1§:b2Vec2;
      
      private var mName:String;
      
      private var §2!2§:b2Transform;
      
      private var § D§:Sprite;
      
      private var §,E§:§7a§;
      
      private var §1!b§:uint = 16777215;
      
      private var §%"2§:uint;
      
      private const §&2§:uint = 14218751;
      
      private const §!">§:uint = 16237696;
      
      private const §7!Y§:uint = 13882323;
      
      private var §9$§:uint = 12318377;
      
      public function GhostObject(param1:§7a§)
      {
         this.§%"2§ = this.§1!b§;
         super();
         this.§ D§ = param1.§#!Q§();
         this.§+<§ = new Point(this.§ D§.x,this.§ D§.y);
         this.§5!P§ = param1.§]5§();
         this.§0!>§ = this.§ D§.rotation;
         this.§""+§ = param1.§&8§();
         this.§8!1§ = param1.getCenter();
         this.mName = param1.getName();
         this.§2!2§ = param1.§3z§();
         this.§=]§(this.mName);
      }
      
      public function refresh(param1:§^!!§, param2:Vector.<§7a§>) : void
      {
         var _loc3_:§7a§ = null;
         if(this.§,E§ != null)
         {
            _loc3_ = this.§,E§;
            this.§9!C§();
            if(!this.§,E§)
            {
               param2.splice(param2.indexOf(_loc3_),1);
            }
            dispatchEvent(new §!"8§(§!"8§.CHANGE));
         }
      }
      
      public function §?k§(param1:Vector.<§7a§>, param2:Vector.<§7a§>) : void
      {
         var _loc3_:§7a§ = null;
         this.§9!C§();
         if(this.§,E§ != null)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            if(!(param2.indexOf(_loc3_) >= 0 || _loc3_.getName() != this.mName))
            {
               if(this.§`""§(_loc3_))
               {
                  param2.push(_loc3_);
                  _loc3_.§9!c§(this.§2!2§);
                  this.§,E§ = _loc3_;
                  dispatchEvent(new §!"8§(§!"8§.CHANGE));
                  break;
               }
            }
         }
      }
      
      private function §9!C§() : void
      {
         if(this.§,E§ != null)
         {
            if(!this.§`""§(this.§,E§))
            {
               this.§,E§ = null;
               dispatchEvent(new §!"8§(§!"8§.CHANGE));
            }
         }
      }
      
      private function §`""§(param1:§7a§) : Boolean
      {
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         _loc2_.§&"1§(this.§8!1§);
         return _loc2_.§?!]§() < Math.max(this.§""+§.width,this.§""+§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
      }
      
      public function get object() : §7a§
      {
         return this.§,E§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§+<§.x;
      }
      
      public function get y() : Number
      {
         return this.§+<§.y;
      }
      
      public function get §4U§() : Number
      {
         return this.§5!P§.x;
      }
      
      public function get §5!Y§() : Number
      {
         return this.§5!P§.y;
      }
      
      public function get rotation() : Number
      {
         return this.§0!>§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§2!2§;
      }
      
      public function get §%i§() : Boolean
      {
         return this.§,E§ != null;
      }
      
      public function get borderColor() : uint
      {
         return this.§%"2§;
      }
      
      private function §=]§(param1:String) : void
      {
         if(param1.indexOf("STONE") != -1)
         {
            this.§%"2§ = this.§7!Y§;
         }
         else if(param1.indexOf("WOOD") != -1)
         {
            this.§%"2§ = this.§!">§;
         }
         else if(param1.indexOf("ICE") != -1)
         {
            this.§%"2§ = this.§&2§;
         }
         else if(param1.indexOf("PIG") != -1)
         {
            this.§%"2§ = this.§9$§;
         }
      }
   }
}
