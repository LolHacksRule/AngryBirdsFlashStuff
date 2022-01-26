package §#m§
{
   import §<!8§.b2Vec2;
   import §?@§.§"]§;
   
   public class § ]§
   {
      
      public static var §-f§:Array;
       
      
      public function § ]§()
      {
         super();
      }
      
      public static function §;!#§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §-f§ = new Array();
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
                  §>w§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §#!8§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §"]§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §"]§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §"]§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §>I§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §>I§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §-f§[§-f§.length] = new §;N§(param1,param2,param3,param4,param5);
      }
      
      public static function §#!8§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§;N§;
         (_loc5_ = new §;N§(param1,param2,-1,-1,param4)).§5!c§(param3);
         _loc5_.§!!U§();
         §-f§[§-f§.length] = _loc5_;
      }
      
      public static function §>w§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§;N§;
         (_loc5_ = new §;N§(param1,param2,param3,param3)).§5!c§(param4);
         §-f§[§-f§.length] = _loc5_;
      }
      
      public static function §<!>§(param1:String) : §;N§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §-f§.length)
         {
            if((§-f§[_loc2_] as §;N§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §;N§(§-f§[_loc2_]);
            }
            _loc2_++;
         }
         §"]§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
