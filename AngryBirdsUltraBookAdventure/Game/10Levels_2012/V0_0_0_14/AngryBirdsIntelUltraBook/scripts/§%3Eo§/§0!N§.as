package §>o§
{
   import §0!'§.b2CircleShape;
   import §0!'§.b2PolygonShape;
   import §0!'§.b2Shape;
   import §6z§.§[g§;
   import §8>§.b2Vec2;
   
   public class §0!N§
   {
      
      public static const §#Z§:int = 0;
      
      public static const §!!'§:int = 1;
      
      public static const §@!O§:int = 2;
      
      public static const §>6§:int = 3;
      
      public static const §0M§:int = 4;
      
      public static const §#!`§:int = 5;
       
      
      public var mName:String;
      
      public var §;N§:int;
      
      public var §>!D§:Number;
      
      public var §7!3§:Number;
      
      public var §8z§:Number;
      
      public var §7!P§:Array = null;
      
      public function §0!N§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§;N§ = this.§!!o§(param2);
         this.§>!D§ = param3;
         this.§7!3§ = param4;
         this.§8z§ = param5;
      }
      
      public function §>1§() : int
      {
         return this.§;N§;
      }
      
      public function §9^§() : Number
      {
         return this.§>!D§;
      }
      
      public function §+!k§() : int
      {
         return this.§7!3§;
      }
      
      private function §!!o§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §>6§;
         }
         if(param1 == "CIRCLE")
         {
            return §0M§;
         }
         if(param1 == "POLYGON")
         {
            return §#!`§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §#Z§;
         }
         if(param1 == "Image_Polygon")
         {
            return §!!'§;
         }
         if(param1 == "Image_Circle")
         {
            return §@!O§;
         }
         §[g§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §>6§;
      }
      
      public function §9K§() : Array
      {
         return this.§7!P§;
      }
      
      public function §=!&§(param1:Array) : void
      {
         this.§7!P§ = param1;
      }
      
      public function §2! §() : void
      {
         var _loc1_:Array = this.§,s§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§>!D§ = _loc3_.x - _loc2_.x;
         this.§7!3§ = _loc3_.y - _loc2_.y;
      }
      
      public function §,s§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§7!P§)
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
      
      public function § !o§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§;N§)
         {
            case §0M§:
               _loc2_ = new b2CircleShape();
               _loc2_.§^!4§(this.§>!D§ * param1);
               return _loc2_;
            case §#!`§:
               _loc3_ = this.§9K§();
               (_loc4_ = new b2PolygonShape()).§2!C§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§&p§();
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
