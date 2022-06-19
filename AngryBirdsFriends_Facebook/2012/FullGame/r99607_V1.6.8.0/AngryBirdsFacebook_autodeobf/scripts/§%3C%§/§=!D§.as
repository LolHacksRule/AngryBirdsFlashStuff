package §<%§
{
   import §!"8§.b2Vec2;
   import §&I§.b2CircleShape;
   import §&I§.b2PolygonShape;
   import §&I§.b2Shape;
   import §0!?§.§'!$§;
   
   public class §=!D§
   {
      
      public static const §=Z§:int = 0;
      
      public static const §5!x§:int = 1;
      
      public static const §`u§:int = 2;
      
      public static const §`!!§:int = 3;
      
      public static const §<c§:int = 4;
      
      public static const §+2§:int = 5;
       
      
      public var mName:String;
      
      public var §<!Q§:int;
      
      public var §]"A§:Number;
      
      public var §>!>§:Number;
      
      public var §#B§:Number;
      
      public var §>"5§:Array = null;
      
      public function §=!D§(param1:String, param2:String, param3:Number, param4:Number, param5:Number = 0)
      {
         super();
         this.mName = param1;
         this.§<!Q§ = this.§,"2§(param2);
         this.§]"A§ = param3;
         this.§>!>§ = param4;
         this.§#B§ = param5;
      }
      
      public function § _§() : int
      {
         return this.§<!Q§;
      }
      
      public function §-"&§() : Number
      {
         return this.§]"A§;
      }
      
      public function §2<§() : int
      {
         return this.§>!>§;
      }
      
      private function §,"2§(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return §`!!§;
         }
         if(param1 == "CIRCLE")
         {
            return §<c§;
         }
         if(param1 == "POLYGON")
         {
            return §+2§;
         }
         if(param1 == "Image_Rectangle")
         {
            return §=Z§;
         }
         if(param1 == "Image_Polygon")
         {
            return §5!x§;
         }
         if(param1 == "Image_Circle")
         {
            return §`u§;
         }
         §'!$§.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return §`!!§;
      }
      
      public function §`!l§() : Array
      {
         return this.§>"5§;
      }
      
      public function §2s§(param1:Array) : void
      {
         this.§>"5§ = param1;
      }
      
      public function §<o§() : void
      {
         var _loc1_:Array = this.§0e§();
         var _loc2_:b2Vec2 = _loc1_[0] as b2Vec2;
         var _loc3_:b2Vec2 = _loc1_[1] as b2Vec2;
         this.§]"A§ = _loc3_.x - _loc2_.x;
         this.§>!>§ = _loc3_.y - _loc2_.y;
      }
      
      public function §0e§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§>"5§)
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
      
      public function §#T§(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:Array = null;
         var _loc4_:b2PolygonShape = null;
         var _loc5_:Vector.<b2Vec2> = null;
         var _loc6_:b2Vec2 = null;
         switch(this.§<!Q§)
         {
            case §<c§:
               _loc2_ = new b2CircleShape();
               _loc2_.§&<§(this.§]"A§ * param1);
               return _loc2_;
            case §+2§:
               _loc3_ = this.§`!l§();
               (_loc4_ = new b2PolygonShape()).§`I§(_loc3_,_loc3_.length);
               _loc5_ = _loc4_.§^!9§();
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
