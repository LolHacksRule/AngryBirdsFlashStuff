package §!T§
{
   import §9H§.§@M§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §==§
   {
      
      public static var §0x§:Array;
       
      
      public function §==§()
      {
         super();
      }
      
      public static function §'f§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §0x§ = new Array();
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
                  §%w§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §]K§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §@M§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §@M§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §@M§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §<!G§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §<!G§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §0x§[§0x§.length] = new §'2§(param1,param2,param3,param4,param5);
      }
      
      public static function §]K§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§'2§;
         (_loc5_ = new §'2§(param1,param2,-1,-1,param4)).§0q§(param3);
         _loc5_.§4+§();
         §0x§[§0x§.length] = _loc5_;
      }
      
      public static function §%w§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§'2§;
         (_loc5_ = new §'2§(param1,param2,param3,param3)).§0q§(param4);
         §0x§[§0x§.length] = _loc5_;
      }
      
      public static function §7b§(param1:String) : §'2§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §0x§.length)
         {
            if((§0x§[_loc2_] as §'2§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §'2§(§0x§[_loc2_]);
            }
            _loc2_++;
         }
         §@M§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
