package §_-hR§
{
   import §_-Zl§.b2Vec2;
   import §_-ot§.§_-o6§;
   
   public class §_-YU§
   {
      
      public static var §_-97§:Array;
       
      
      public function §_-YU§()
      {
         super();
      }
      
      public static function §_-FP§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §_-97§ = new Array();
         for each(_loc2_ in param1.Shape)
         {
            if(_loc2_.@shape == "CIRCLE" || _loc2_.@shape == "POLYGON" || _loc2_.@shape == "NONE")
            {
               _loc3_ = _loc2_.@id;
               _loc4_ = _loc2_.@shape;
               _loc5_ = new Array();
               for each(_loc6_ in _loc2_.Vertex)
               {
                  _loc5_.push(new b2Vec2(_loc6_.@x,_loc6_.@y));
               }
               if(_loc4_ == "CIRCLE")
               {
                  _loc7_ = parseFloat(_loc2_.Radius[0].@value);
                  §_-T3§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §_-uT§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §_-o6§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §_-o6§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §_-o6§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §_-Cj§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §_-Cj§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §_-97§[§_-97§.length] = new §_-bZ§(param1,param2,param3,param4,param5);
      }
      
      public static function §_-uT§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§_-bZ§;
         (_loc5_ = new §_-bZ§(param1,param2,-1,-1,param4)).§_-3g§(param3);
         _loc5_.§_-G9§();
         §_-97§[§_-97§.length] = _loc5_;
      }
      
      public static function §_-T3§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§_-bZ§;
         (_loc5_ = new §_-bZ§(param1,param2,param3,param3)).§_-3g§(param4);
         §_-97§[§_-97§.length] = _loc5_;
      }
      
      public static function §_-lk§(param1:String) : §_-bZ§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-97§.length)
         {
            if((§_-97§[_loc2_] as §_-bZ§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-bZ§(§_-97§[_loc2_]);
            }
            _loc2_++;
         }
         §_-o6§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
