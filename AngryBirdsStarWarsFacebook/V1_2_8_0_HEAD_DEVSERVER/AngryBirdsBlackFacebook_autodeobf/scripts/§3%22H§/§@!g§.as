package §3"H§
{
   import §+!4§.§&"p§;
   
   public class §@!g§
   {
      
      private static var §#!^§:String = "{}";
      
      public static var §5#5§:Boolean = true;
       
      
      public function §@!g§()
      {
         super();
      }
      
      public static function §;!L§(param1:int, param2:Array) : String
      {
         switch(param1)
         {
            case §&"p§.§"#&§:
               if(("" + param2[0]).indexOf("{}") > -1)
               {
                  return §`"j§(param2);
               }
               return param2.join(" ");
               break;
            case §&"p§.NONE:
         }
         return param2.join(" ");
      }
      
      private static function §`"j§(param1:Array) : String
      {
         var _loc7_:String = null;
         if(param1.length < 2)
         {
            return param1.join(" ");
         }
         var _loc2_:String = param1.shift();
         var _loc3_:String = "";
         var _loc4_:Array = _loc2_.split(§#!^§);
         if(_loc4_[_loc4_.length - 1] == "")
         {
            _loc4_.pop();
         }
         else
         {
            _loc3_ = _loc4_.pop();
         }
         var _loc5_:Array = [];
         var _loc6_:int = 0;
         while(param1.length > 0)
         {
            _loc7_ = "" + param1.shift();
            _loc5_.push(_loc4_[_loc6_] + _loc7_);
            _loc6_++;
            if(_loc6_ > _loc4_.length - 1)
            {
               _loc5_.push(_loc3_);
               if(!§5#5§)
               {
                  break;
               }
               if(param1.length > 0)
               {
                  _loc5_.push(", ");
               }
               _loc6_ = 0;
            }
         }
         return _loc5_.join("");
      }
   }
}
