package §`=§
{
   import §@V§.§`!5§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §7!K§
   {
      
      public static var §,!D§:Array;
       
      
      public function §7!K§()
      {
         super();
      }
      
      public static function §76§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:XML = null;
         var _loc7_:Number = NaN;
         §,!D§ = new Array();
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
                  §&Q§(_loc3_,_loc4_,_loc7_,_loc5_);
               }
               else
               {
                  §+!E§(_loc3_,_loc4_,_loc5_,_loc2_.@flipAngleCorrection);
               }
            }
            else
            {
               if(_loc2_.attribute("shape").length() <= 0)
               {
                  §`!5§.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("width").length() <= 0)
               {
                  §`!5§.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
               }
               if(_loc2_.attribute("height").length() <= 0)
               {
                  §`!5§.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
               }
               §@!C§(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height,_loc2_.@flipAngleCorrection);
            }
         }
      }
      
      public static function §@!C§(param1:String, param2:String, param3:Number, param4:Number, param5:Number) : void
      {
         §,!D§[§,!D§.length] = new §24§(param1,param2,param3,param4,param5);
      }
      
      public static function §+!E§(param1:String, param2:String, param3:Array, param4:Number) : void
      {
         var _loc5_:§24§;
         (_loc5_ = new §24§(param1,param2,-1,-1,param4)).§?r§(param3);
         _loc5_.§>! §();
         §,!D§[§,!D§.length] = _loc5_;
      }
      
      public static function §&Q§(param1:String, param2:String, param3:Number, param4:Array) : void
      {
         var _loc5_:§24§;
         (_loc5_ = new §24§(param1,param2,param3,param3)).§?r§(param4);
         §,!D§[§,!D§.length] = _loc5_;
      }
      
      public static function §8§(param1:String) : §24§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §,!D§.length)
         {
            if((§,!D§[_loc2_] as §24§).mName.toLowerCase() == param1.toLowerCase())
            {
               return §24§(§,!D§[_loc2_]);
            }
            _loc2_++;
         }
         §`!5§.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
