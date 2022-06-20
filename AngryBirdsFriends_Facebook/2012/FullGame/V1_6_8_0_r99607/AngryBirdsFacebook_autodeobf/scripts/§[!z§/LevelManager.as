package §[!z§
{
   import §4!r§.§0!`§;
   
   public class LevelManager
   {
      
      public static const §9""§:String = "1-1";
      
      protected static var §?!?§:Array = null;
      
      protected static var §+!@§:Array = [];
      
      protected static var §9U§:Array = [];
      
      public static var §[!<§:String = null;
      
      public static var §>!t§:String = null;
      
      public static var §5!5§:Boolean;
      
      public static var §@O§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §6N§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§]f§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §?!?§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §]f§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§&#§ = _loc2_.leftCorner;
            _loc3_.§@i§ = _loc2_.rightCorner;
            _loc3_.§&9§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§@!-§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §?!?§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §9U§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §,!"§() : void
      {
      }
      
      public static function §"!r§(param1:String) : §]f§
      {
         var _loc2_:§]f§ = null;
         for each(_loc2_ in §?!?§)
         {
            if(_loc2_.§3n§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5!h§(param1:String) : int
      {
         var _loc3_:§]f§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §?!?§.length)
         {
            _loc3_ = §?!?§[_loc2_];
            if(_loc3_.§3n§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §3"1§(param1:int) : §]f§
      {
         return §?!?§[param1];
      }
      
      public static function §,4§(param1:String) : §]f§
      {
         var _loc2_:§]f§ = null;
         for each(_loc2_ in §?!?§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §%3§() : int
      {
         return §?!?§.length;
      }
      
      public static function §]!W§(param1:String) : §!"=§
      {
         if(!§+!@§[param1])
         {
            if(§9U§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §+!@§[param1];
      }
      
      public static function §>",§(param1:String, param2:§!"=§) : void
      {
         §+!@§[param1] = param2;
      }
      
      public static function §6K§(param1:String, param2:int) : int
      {
         var level:§!"=§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§]!W§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§5!V§)
         {
            return 1;
         }
         if(score < level.§ "3§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §?">§(param1:String) : String
      {
         if(!§9U§[param1])
         {
            return §9""§;
         }
         return param1;
      }
      
      public static function §'!"§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§]f§ = null;
         if(param1 != §[!<§)
         {
            _loc2_ = §5!h§(param1);
            if(_loc2_ >= 0)
            {
               §@O§ = _loc2_;
               §>!t§ = §[!<§;
               §[!<§ = param1;
               _loc3_ = §8!§();
               if(_loc3_)
               {
                  _loc3_.§4z§ = _loc3_.§&t§(param1);
               }
            }
            else
            {
               §>!t§ = §[!<§;
               §[!<§ = null;
            }
         }
      }
      
      public static function §[k§() : String
      {
         return §[!<§.substring(5);
      }
      
      public static function §8!§() : §]f§
      {
         return §?!?§[§@O§];
      }
      
      public static function §&B§() : Boolean
      {
         return true;
      }
      
      public static function §0f§() : Boolean
      {
         var _loc1_:String = §3$§();
         var _loc2_:String = §8!§().§>z§(§[!<§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §0!`§.§"`§(_loc2_);
         }
         return true;
      }
      
      public static function §3$§() : String
      {
         return §8!§().§3$§(§[!<§);
      }
   }
}
