package §,Y§
{
   import §2x§.§'!@§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §&D§
   {
      
      public static var §+M§:Array;
       
      
      public function §&D§()
      {
         super();
      }
      
      public static function §&e§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §+M§ = new Array();
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
                  §4P§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §[t§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §'!@§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §'!@§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §'!@§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §6!7§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §6!7§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §+M§[§+M§.length] = new §^!1§(param1,param2,param3,param4,param5);
      }
      
      public static function §[t§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§^!1§;
         (_loc5_ = new §^!1§(param1,param2,-1,-1,param4)).§2y§(param3);
         _loc5_.§@b§();
         §+M§[§+M§.length] = _loc5_;
      }
      
      public static function §4P§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§^!1§;
         (_loc5_ = new §^!1§(param1,param2,param3,param3)).§2y§(param4);
         §+M§[§+M§.length] = _loc5_;
      }
      
      public static function §^u§(param1:String) : §^!1§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §+M§.length)
         {
            if((§+M§[_loc2_] as §^!1§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §^!1§(§+M§[_loc2_]);
            }
            _loc2_++;
         }
         §'!@§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
