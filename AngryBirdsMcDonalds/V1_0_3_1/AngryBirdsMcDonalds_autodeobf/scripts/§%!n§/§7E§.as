package §%!n§
{
   import §0,§.b2Vec2;
   import §5K§.§[C§;
   
   public class §7E§
   {
      
      public static var §+d§:Array;
       
      
      public function §7E§()
      {
         super();
      }
      
      public static function §6!E§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §+d§ = new Array();
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
                  §>!§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §#5§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §[C§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §[C§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §[C§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §+W§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §+W§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §+d§[§+d§.length] = new §%X§(param1,param2,param3,param4,param5);
      }
      
      public static function §#5§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§%X§;
         (_loc5_ = new §%X§(param1,param2,-1,-1,param4)).§=f§(param3);
         _loc5_.§%!Z§();
         §+d§[§+d§.length] = _loc5_;
      }
      
      public static function §>!§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§%X§;
         (_loc5_ = new §%X§(param1,param2,param3,param3)).§=f§(param4);
         §+d§[§+d§.length] = _loc5_;
      }
      
      public static function § !`§(param1:String) : §%X§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §+d§.length)
         {
            if((§+d§[_loc2_] as §%X§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §%X§(§+d§[_loc2_]);
            }
            _loc2_++;
         }
         §[C§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
