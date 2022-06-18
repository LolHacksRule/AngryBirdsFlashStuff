package §5x§
{
   import §5!K§.b2Vec2;
   import §^!&§.§;C§;
   import §each §.b2CircleShape;
   import §each §.b2PolygonShape;
   import §each §.b2Shape;
   
   public class override
   {
      
      public static const §4N§:int = 0;
      
      public static const §;!9§:int = 1;
      
      public static const §&y§:int = 2;
      
      public static const §7!M§:int = 3;
      
      public static const §&d§:int = 4;
      
      public static const §[6§:int = 5;
       
      
      public var mName:String;
      
      public var §#!Z§:int;
      
      public var §^S§:Number;
      
      public var §6-§:Number;
      
      public var §3?§:Number;
      
      public var §;!I§:Array = null;
      
      public function override(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§#!Z§ = this.§^0§(param2);
         this.§^S§ = param3;
         this.§6-§ = param4;
         this.§3?§ = param5;
      }
      
      public function §,!S§() : int
      {
         return this.§#!Z§;
      }
      
      public function §[!2§() : Number
      {
         return this.§^S§;
      }
      
      public function §>j§() : int
      {
         return this.§6-§;
      }
      
      private function §^0§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §7!M§;
         }
         if(param1 == "CIRCLE")
         {
            return §&d§;
         }
         if(param1 == "POLYGON")
         {
            return §[6§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §4N§;
         }
         if(param1 == "Image_Polygon")
         {
            return §;!9§;
         }
         if(param1 == "Image_Circle")
         {
            return §&y§;
         }
         §;C§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §7!M§;
      }
      
      public function §26§() : Array
      {
         return this.§;!I§;
      }
      
      public function §!!§(param1:Array) : void
      {
         this.§;!I§ = param1;
      }
      
      public function §=!N§() : void
      {
         var _loc1_:Array = this.§+!<§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§^S§ = _loc3_.x - _loc2_.x;
         this.§6-§ = _loc3_.y - _loc2_.y;
      }
      
      public function §+!<§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§;!I§)
         {
            if(_loc5_)
            {
               _loc1_ = _loc3_ = _loc6_.x;
               _loc2_ = _loc4_ = _loc6_.y;
               _loc5_ = false;
            }
            else
            {
               if(_loc6_.x < _loc1_)
               {
                  _loc1_ = _loc6_.x;
               }
               if(_loc6_.x > _loc3_)
               {
                  _loc3_ = _loc6_.x;
               }
               if(_loc6_.y < _loc2_)
               {
                  _loc2_ = _loc6_.y;
               }
               if(_loc6_.y > _loc4_)
               {
                  _loc4_ = _loc6_.y;
               }
            }
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      public function §#!0§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§#!Z§)
         {
            case §&d§:
               _loc2_ = new b2CircleShape();
               _loc2_.§>J§(this.§^S§ * param1);
               return _loc2_;
            case §[6§:
               _loc3_ = this.§26§();
               (_loc4_ = new b2PolygonShape()).§7!1§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§2C§();
               for each(_loc6_ in _loc5_)
               {
                  _loc6_.x *= param1;
                  _loc6_.y *= param1;
               }
               return _loc4_;
            default:
               return null;
         }
      }
   }
}
