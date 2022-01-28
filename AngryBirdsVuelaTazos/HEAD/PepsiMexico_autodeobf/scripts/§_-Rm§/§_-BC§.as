package §_-Rm§
{
   import §_-bA§.b2Vec2;
   import §_-gM§.§_-yj§;
   
   public class §_-BC§
   {
      
      public static var §_-fe§:Array;
       
      
      public function §_-BC§()
      {
         super();
      }
      
      public static function §_-rt§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §_-fe§ = new Array();
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
                  §_-hX§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §_-Fp§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §_-yj§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §_-yj§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §_-yj§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §_-Fr§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §_-Fr§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §_-fe§[§_-fe§.length] = new §_-7§(param1,param2,param3,param4,param5);
      }
      
      public static function §_-Fp§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§_-7§;
         (_loc5_ = new §_-7§(param1,param2,-1,-1,param4)).§_-YY§(param3);
         _loc5_.§_-CG§();
         §_-fe§[§_-fe§.length] = _loc5_;
      }
      
      public static function §_-hX§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§_-7§;
         (_loc5_ = new §_-7§(param1,param2,param3,param3)).§_-YY§(param4);
         §_-fe§[§_-fe§.length] = _loc5_;
      }
      
      public static function §_-6e§(param1:String) : §_-7§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §_-fe§.length)
         {
            if((§_-fe§[_loc2_] as §_-7§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §_-7§(§_-fe§[_loc2_]);
            }
            _loc2_++;
         }
         §_-yj§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
