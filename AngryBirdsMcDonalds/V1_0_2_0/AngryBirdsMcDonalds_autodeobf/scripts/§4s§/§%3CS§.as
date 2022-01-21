package §4s§
{
   import §"U§.b2Vec2;
   import §=<§.§1+§;
   
   public class §<S§
   {
      
      public static var §8f§:Array;
       
      
      public function §<S§()
      {
         super();
      }
      
      public static function §"M§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §8f§ = new Array();
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
                  §7Y§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §-j§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §1+§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §1+§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §1+§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §6b§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §6b§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §8f§[§8f§.length] = new §[!_§(param1,param2,param3,param4,param5);
      }
      
      public static function §-j§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§[!_§;
         (_loc5_ = new §[!_§(param1,param2,-1,-1,param4)).§#T§(param3);
         _loc5_.§#h§();
         §8f§[§8f§.length] = _loc5_;
      }
      
      public static function §7Y§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§[!_§;
         (_loc5_ = new §[!_§(param1,param2,param3,param3)).§#T§(param4);
         §8f§[§8f§.length] = _loc5_;
      }
      
      public static function §3!!§(param1:String) : §[!_§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §8f§.length)
         {
            if((§8f§[_loc2_] as §[!_§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §[!_§(§8f§[_loc2_]);
            }
            _loc2_++;
         }
         §1+§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
