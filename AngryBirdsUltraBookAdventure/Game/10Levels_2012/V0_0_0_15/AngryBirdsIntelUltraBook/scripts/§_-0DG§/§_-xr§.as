package §_-0DG§
{
   import §_-0BH§.§_-FK§;
   import §_-Yp§.b2Vec2;
   
   public class §_-xr§
   {
      
      public static var §_-eQ§:Array;
       
      
      public function §_-xr§()
      {
         super();
      }
      
      public static function §_-07q§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §_-eQ§ = new Array();
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
                  §_-hD§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §_-kA§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §_-FK§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §_-FK§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §_-FK§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §_-Bb§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §_-Bb§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §_-eQ§[§_-eQ§.length] = new §_-sQ§(param1,param2,param3,param4,param5);
      }
      
      public static function §_-kA§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§_-sQ§;
         (_loc5_ = new §_-sQ§(param1,param2,-1,-1,param4)).§_-MC§(param3);
         _loc5_.§_-UN§();
         §_-eQ§[§_-eQ§.length] = _loc5_;
      }
      
      public static function §_-hD§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§_-sQ§;
         (_loc5_ = new §_-sQ§(param1,param2,param3,param3)).§_-MC§(param4);
         §_-eQ§[§_-eQ§.length] = _loc5_;
      }
      
      public static function §_-0AK§(param1:String) : §_-sQ§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-eQ§.length)
         {
            if((§_-eQ§[_loc2_] as §_-sQ§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-sQ§(§_-eQ§[_loc2_]);
            }
            _loc2_++;
         }
         §_-FK§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
