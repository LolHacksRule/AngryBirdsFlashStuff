package §3G§
{
   import §0i§.§4!%§;
   import §^!%§.b2Vec2;
   
   public class §7i§
   {
      
      public static var §2!2§:Array;
       
      
      public function §7i§()
      {
         super();
      }
      
      public static function §=!7§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §2!2§ = new Array();
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
                  §3!O§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §?P§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §4!%§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §4!%§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §4!%§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §7I§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §7I§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §2!2§[§2!2§.length] = new §9!g§(param1,param2,param3,param4,param5);
      }
      
      public static function §?P§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§9!g§;
         (_loc5_ = new §9!g§(param1,param2,-1,-1,param4)).§'c§(param3);
         _loc5_.§?y§();
         §2!2§[§2!2§.length] = _loc5_;
      }
      
      public static function §3!O§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§9!g§;
         (_loc5_ = new §9!g§(param1,param2,param3,param3)).§'c§(param4);
         §2!2§[§2!2§.length] = _loc5_;
      }
      
      public static function §4E§(param1:String) : §9!g§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §2!2§.length)
         {
            if((§2!2§[_loc2_] as §9!g§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §9!g§(§2!2§[_loc2_]);
            }
            _loc2_++;
         }
         §4!%§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
