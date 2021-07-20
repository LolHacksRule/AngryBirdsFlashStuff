package § A§
{
   import §&!b§.§ c§;
   import §`!^§.b2Vec2;
   
   public class §^h§
   {
      
      public static var §4!d§:Array;
       
      
      public function §^h§()
      {
         super();
      }
      
      public static function §=!F§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §4!d§ = new Array();
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
                  §&!>§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §^s§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  § c§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  § c§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  § c§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §"!'§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §"!'§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §4!d§[§4!d§.length] = new §9c§(param1,param2,param3,param4,param5);
      }
      
      public static function §^s§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§9c§;
         (_loc5_ = new §9c§(param1,param2,-1,-1,param4)).§ null§(param3);
         _loc5_.§#C§();
         §4!d§[§4!d§.length] = _loc5_;
      }
      
      public static function §&!>§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§9c§;
         (_loc5_ = new §9c§(param1,param2,param3,param3)).§ null§(param4);
         §4!d§[§4!d§.length] = _loc5_;
      }
      
      public static function §40§(param1:String) : §9c§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §4!d§.length)
         {
            if((§4!d§[_loc2_] as §9c§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §9c§(§4!d§[_loc2_]);
            }
            _loc2_++;
         }
         § c§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
