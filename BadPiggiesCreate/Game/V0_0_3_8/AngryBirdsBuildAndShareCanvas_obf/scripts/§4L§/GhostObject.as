package §4L§
{
   import §%!&§.§'"-§;
   import §,m§.§?"%§;
   import §9v§.b2Transform;
   import §9v§.b2Vec2;
   import §]!2§.Sprite;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §true§.§>"-§;
   
   public class GhostObject extends EventDispatcher
   {
       
      
      private var §?!y§:Point;
      
      private var §2Z§:b2Vec2;
      
      private var §^@§:Number;
      
      private var §-!e§:Rectangle;
      
      private var §^!_§:b2Vec2;
      
      private var mName:String;
      
      private var §%!]§:b2Transform;
      
      private var §`!-§:Sprite;
      
      private var §3!=§:§>"-§;
      
      private var §<"3§:uint = 16777215;
      
      private var §=k§:uint;
      
      private const §[Z§:uint = 14218751;
      
      private const §;!K§:uint = 16237696;
      
      private const §[q§:uint = 13882323;
      
      private var §+I§:uint = 12318377;
      
      public function GhostObject(param1:§>"-§)
      {
         this.§=k§ = this.§<"3§;
         super();
         this.§`!-§ = param1.§2B§();
         this.§?!y§ = new Point(this.§`!-§.x,this.§`!-§.y);
         this.§2Z§ = param1.§8K§();
         this.§^@§ = this.§`!-§.rotation;
         this.§-!e§ = param1.§>!Q§();
         this.§^!_§ = param1.getCenter();
         this.mName = param1.getName();
         this.§%!]§ = param1.§;w§();
         this.§`9§(this.mName);
      }
      
      public function refresh(param1:§'"-§, param2:Vector.<§>"-§>) : void
      {
         var _loc3_:§>"-§ = null;
         if(this.§3!=§ != null)
         {
            _loc3_ = this.§3!=§;
            this.§>!@§();
            if(!this.§3!=§)
            {
               param2.splice(param2.indexOf(_loc3_),1);
            }
            dispatchEvent(new §?"%§(§?"%§.CHANGE));
         }
      }
      
      public function §^"#§(param1:Vector.<§>"-§>, param2:Vector.<§>"-§>) : void
      {
         var _loc3_:§>"-§ = null;
         this.§>!@§();
         if(this.§3!=§ != null)
         {
            return;
         }
         for each(_loc3_ in param1)
         {
            if(!(param2.indexOf(_loc3_) >= 0 || _loc3_.getName() != this.mName))
            {
               if(this.§`!6§(_loc3_))
               {
                  param2.push(_loc3_);
                  _loc3_.§4U§(this.§%!]§);
                  this.§3!=§ = _loc3_;
                  dispatchEvent(new §?"%§(§?"%§.CHANGE));
                  break;
               }
            }
         }
      }
      
      private function §>!@§() : void
      {
         if(this.§3!=§ != null)
         {
            if(!this.§`!6§(this.§3!=§))
            {
               this.§3!=§ = null;
               dispatchEvent(new §?"%§(§?"%§.CHANGE));
            }
         }
      }
      
      private function §`!6§(param1:§>"-§) : Boolean
      {
         var _loc2_:b2Vec2 = null;
         _loc2_ = param1.getCenter();
         _loc2_.§7E§(this.§^!_§);
         return _loc2_.§8!p§() < Math.max(this.§-!e§.width,this.§-!e§.height) / 2;
      }
      
      public function get sprite() : Sprite
      {
         return this.§`!-§;
      }
      
      public function get object() : §>"-§
      {
         return this.§3!=§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get x() : Number
      {
         return this.§?!y§.x;
      }
      
      public function get y() : Number
      {
         return this.§?!y§.y;
      }
      
      public function get §4!Q§() : Number
      {
         return this.§2Z§.x;
      }
      
      public function get §^!]§() : Number
      {
         return this.§2Z§.y;
      }
      
      public function get rotation() : Number
      {
         return this.§^@§;
      }
      
      public function get transform() : b2Transform
      {
         return this.§%!]§;
      }
      
      public function get §>U§() : Boolean
      {
         return this.§3!=§ != null;
      }
      
      public function get borderColor() : uint
      {
         return this.§=k§;
      }
      
      private function §`9§(param1:String) : void
      {
         if(param1.indexOf("STONE") != -1)
         {
            this.§=k§ = this.§[q§;
         }
         else if(param1.indexOf("WOOD") != -1)
         {
            this.§=k§ = this.§;!K§;
         }
         else if(param1.indexOf("ICE") != -1)
         {
            this.§=k§ = this.§[Z§;
         }
         else if(param1.indexOf("PIG") != -1)
         {
            this.§=k§ = this.§+I§;
         }
      }
   }
}
