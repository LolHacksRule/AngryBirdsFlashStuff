package §_-p5§
{
   import §_-U0§.§_-tF§;
   import §_-cP§.b2Vec2;
   
   public class §_-Ro§
   {
      
      public static var §_-xI§:Array;
       
      
      public function §_-Ro§()
      {
         super();
      }
      
      public static function §_-nG§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §_-xI§ = new Array();
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
                  §_-RN§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §_-Zr§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §_-tF§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §_-tF§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §_-tF§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §_-Qx§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §_-Qx§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §_-xI§[§_-xI§.length] = new §_-6L§(param1,param2,param3,param4,param5);
      }
      
      public static function §_-Zr§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§_-6L§;
         (_loc5_ = new §_-6L§(param1,param2,-1,-1,param4)).§_-H2§(param3);
         _loc5_.§_-Kl§();
         §_-xI§[§_-xI§.length] = _loc5_;
      }
      
      public static function §_-RN§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§_-6L§;
         (_loc5_ = new §_-6L§(param1,param2,param3,param3)).§_-H2§(param4);
         §_-xI§[§_-xI§.length] = _loc5_;
      }
      
      public static function §_-H8§(param1:String) : §_-6L§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-xI§.length)
         {
            if((§_-xI§[_loc2_] as §_-6L§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-6L§(§_-xI§[_loc2_]);
            }
            _loc2_++;
         }
         §_-tF§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
