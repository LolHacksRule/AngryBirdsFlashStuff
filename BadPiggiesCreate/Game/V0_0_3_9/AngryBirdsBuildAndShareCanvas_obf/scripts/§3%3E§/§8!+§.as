package §3>§
{
   import §-!G§.b2Vec2;
   import §@!;§.§&F§;
   
   public class §8!+§
   {
      
      public static var §8q§:Array;
       
      
      public function §8!+§()
      {
         super();
      }
      
      public static function §8!P§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §8q§ = new Array();
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
                  §-!i§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §0""§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §&F§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §&F§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §&F§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §-G§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §-G§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §8q§[§8q§.length] = new §4D§(param1,param2,param3,param4,param5);
      }
      
      public static function §0""§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§4D§;
         (_loc5_ = new §4D§(param1,param2,-1,-1,param4)).§0R§(param3);
         _loc5_.§0,§();
         §8q§[§8q§.length] = _loc5_;
      }
      
      public static function §-!i§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§4D§;
         (_loc5_ = new §4D§(param1,param2,param3,param3)).§0R§(param4);
         §8q§[§8q§.length] = _loc5_;
      }
      
      public static function §6i§(param1:String) : §4D§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §8q§.length)
         {
            if((§8q§[_loc2_] as §4D§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §4D§(§8q§[_loc2_]);
            }
            _loc2_++;
         }
         §&F§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
