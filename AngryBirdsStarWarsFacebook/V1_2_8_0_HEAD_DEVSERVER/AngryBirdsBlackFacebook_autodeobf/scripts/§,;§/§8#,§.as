package §,;§
{
   import §6Z§.§8#O§;
   
   public class §8#,§
   {
      
      private static const § #Z§:int = "\'".charCodeAt(0);
      
      private static const §90§:int = "\"".charCodeAt(0);
      
      private static const §[]§:int = "{".charCodeAt(0);
      
      private static const §6!g§:int = "}".charCodeAt(0);
      
      private static const § "q§:int = "[".charCodeAt(0);
      
      private static const §"!L§:int = "]".charCodeAt(0);
      
      private static const §-!$§:int = "(".charCodeAt(0);
      
      private static const §6" §:int = ")".charCodeAt(0);
      
      private static const SPACE:int = " ".charCodeAt(0);
      
      private static const §7"6§:int = "|".charCodeAt(0);
       
      
      public function §8#,§()
      {
         super();
      }
      
      public static function slice(param1:String) : Array
      {
         var _loc2_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Array = null;
         if(param1.charAt(0) == "\'" && param1.charAt(param1.length - 1) == "\'" || param1.charAt(0) == "\"" && param1.charAt(param1.length - 1) == "\"")
         {
            return [param1];
         }
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            _loc2_++;
            _loc6_ = param1.charCodeAt(_loc2_);
            switch(_loc6_)
            {
               case §-!$§:
                  _loc2_ = §2"`§(param1,_loc2_);
                  break;
               case SPACE:
                  _loc7_ = param1.substring(0,_loc2_);
                  _loc8_ = param1.substring(_loc2_ + 1);
                  param1 = (_loc9_ = [_loc7_,_loc8_]).join(§7"6§);
                  break;
               case § #Z§:
               case §90§:
                  _loc2_ = §9K§(param1,_loc2_);
                  break;
               case §[]§:
                  _loc2_ = §"0§(param1,_loc2_);
                  break;
               case § "q§:
                  _loc2_ = §]"#§(param1,_loc2_);
                  break;
            }
         }
         var _loc3_:Array = param1.split(§7"6§);
         var _loc4_:String = "";
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length)
         {
            if((_loc4_ = _loc3_[_loc5_]).charCodeAt(0) == § #Z§ || _loc4_.charCodeAt(0) == §90§)
            {
               _loc3_[_loc5_] = _loc4_.substring(1,_loc4_.length - 1);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      private static function §2"`§(param1:String, param2:int) : int
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = param1.length;
         var _loc7_:int = param2;
         while(_loc7_ < _loc4_)
         {
            if((_loc5_ = param1.charCodeAt(_loc7_)) == §-!$§)
            {
               _loc3_++;
            }
            else if(_loc5_ == §6" §)
            {
               _loc3_--;
               if(_loc3_ <= 0)
               {
                  _loc6_ = _loc7_;
                  break;
               }
            }
            _loc7_++;
         }
         if(_loc3_ > 0)
         {
            throw new ArgumentError(§8#O§.§%#$§);
         }
         return _loc6_;
      }
      
      private static function §"0§(param1:String, param2:int) : int
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = param1.length;
         var _loc7_:int = param2;
         while(_loc7_ < _loc4_)
         {
            if((_loc5_ = param1.charCodeAt(_loc7_)) == §[]§)
            {
               _loc3_++;
            }
            else if(_loc5_ == §6!g§)
            {
               _loc3_--;
               if(_loc3_ <= 0)
               {
                  _loc6_ = _loc7_;
                  break;
               }
            }
            _loc7_++;
         }
         if(_loc3_ > 0)
         {
            throw new ArgumentError(§8#O§.§&#W§);
         }
         return _loc6_;
      }
      
      private static function §]"#§(param1:String, param2:int) : int
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = param1.length;
         var _loc7_:int = param2;
         while(_loc7_ < _loc4_)
         {
            if((_loc5_ = param1.charCodeAt(_loc7_)) == § "q§)
            {
               _loc3_++;
            }
            else if(_loc5_ == §"!L§)
            {
               _loc3_--;
               if(_loc3_ <= 0)
               {
                  _loc6_ = _loc7_;
                  break;
               }
            }
            _loc7_++;
         }
         if(_loc3_ > 0)
         {
            throw new ArgumentError(§8#O§.§3X§);
         }
         return _loc6_;
      }
      
      private static function §9K§(param1:String, param2:int) : int
      {
         var _loc3_:int = param1.indexOf(param1.charAt(param2),param2 + 1);
         if(_loc3_ < param2)
         {
            throw new ArgumentError(§8#O§.§?",§);
         }
         return _loc3_;
      }
      
      private static function §!!V§(param1:String) : int
      {
         return param1.split(SPACE).shift().length;
      }
   }
}
