package §!r§
{
   import §6!H§.b2Vec2;
   import §>^§.§!6§;
   import §]!S§.b2CircleShape;
   import §]!S§.b2PolygonShape;
   import §]!S§.b2Shape;
   
   public class §2k§
   {
      
      public static const § !<§:int = 0;
      
      public static const §^!_§:int = 1;
      
      public static const §6I§:int = 2;
      
      public static const §;!$§:int = 3;
      
      public static const §#N§:int = 4;
      
      public static const §<!"§:int = 5;
       
      
      public var mName:String;
      
      public var §4`§:int;
      
      public var §]>§:Number;
      
      public var §7w§:Number;
      
      public var §4!h§:Number;
      
      public var §]L§:Array = null;
      
      public function §2k§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§4`§ = this.§@!X§(param2);
         this.§]>§ = param3;
         this.§7w§ = param4;
         this.§4!h§ = param5;
      }
      
      public function §'!3§() : int
      {
         return this.§4`§;
      }
      
      public function §[k§() : Number
      {
         return this.§]>§;
      }
      
      public function §>;§() : int
      {
         return this.§7w§;
      }
      
      private function §@!X§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §;!$§;
         }
         if(param1 == "CIRCLE")
         {
            return §#N§;
         }
         if(param1 == "POLYGON")
         {
            return §<!"§;
         }
         if(param1 == "Image_Rectangle")
         {
            return § !<§;
         }
         if(param1 == "Image_Polygon")
         {
            return §^!_§;
         }
         if(param1 == "Image_Circle")
         {
            return §6I§;
         }
         §!6§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §;!$§;
      }
      
      public function §&!B§() : Array
      {
         return this.§]L§;
      }
      
      public function §?!&§(param1:Array) : void
      {
         this.§]L§ = param1;
      }
      
      public function §7!,§() : void
      {
         var _loc1_:Array = this.§%!,§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§]>§ = _loc3_.x - _loc2_.x;
         this.§7w§ = _loc3_.y - _loc2_.y;
      }
      
      public function §%!,§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§]L§)
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
      
      public function §?!V§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§4`§)
         {
            case §#N§:
               _loc2_ = new b2CircleShape();
               _loc2_.§#!3§(this.§]>§ * param1);
               return _loc2_;
            case §<!"§:
               _loc3_ = this.§&!B§();
               (_loc4_ = new b2PolygonShape()).§<G§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§9J§();
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
