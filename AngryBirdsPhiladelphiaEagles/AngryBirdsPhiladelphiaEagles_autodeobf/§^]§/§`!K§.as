package §^]§
{
   import §'7§.§-!K§;
   
   public class §`!K§
   {
      
      public static const §?!%§:String = "1-1";
      
      protected static var §[O§:Array = null;
      
      protected static var §8m§:Array = [];
      
      protected static var §]!§:Array = [];
      
      public static var §5g§:String = null;
      
      public static var §0r§:String = null;
      
      public static var §#B§:Boolean;
      
      public static var §%;§:int = 0;
       
      
      public function §`!K§()
      {
         super();
      }
      
      public static function §0!#§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§7!K§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §[O§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §7!K§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§9`§ = _loc2_.leftCorner;
            _loc3_.§@<§ = _loc2_.rightCorner;
            _loc3_.§8!L§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§&L§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §[O§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §]!§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §^z§() : void
      {
      }
      
      public static function §0@§(param1:String) : §7!K§
      {
         var _loc2_:§7!K§ = null;
         for each(_loc2_ in §[O§)
         {
            if(_loc2_.§1e§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §?!0§(param1:String) : int
      {
         var _loc3_:§7!K§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §[O§.length)
         {
            _loc3_ = §[O§[_loc2_];
            if(_loc3_.§1e§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §5!<§(param1:int) : §7!K§
      {
         return §[O§[param1];
      }
      
      public static function §?`§(param1:String) : §7!K§
      {
         var _loc2_:§7!K§ = null;
         for each(_loc2_ in §[O§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<u§() : int
      {
         return §[O§.length;
      }
      
      public static function §!I§(param1:String) : §[z§
      {
         if(!§8m§[param1])
         {
            if(§]!§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §8m§[param1];
      }
      
      public static function §<R§(param1:String, param2:§[z§) : void
      {
         §8m§[param1] = param2;
      }
      
      public static function §;$§(param1:String, param2:int) : int
      {
         var level:§[z§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §`!K§.§!I§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§@w§)
         {
            return 1;
         }
         if(score < level.§,!<§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §]!F§(param1:String) : String
      {
         if(!§]!§[param1])
         {
            return §?!%§;
         }
         return param1;
      }
      
      public static function §!e§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§7!K§ = null;
         if(param1 != §5g§)
         {
            _loc2_ = §?!0§(param1);
            if(_loc2_ >= 0)
            {
               §%;§ = _loc2_;
               §0r§ = §5g§;
               §5g§ = param1;
               _loc3_ = §]V§();
               if(_loc3_)
               {
                  _loc3_.§9!F§ = _loc3_.§"!#§(param1);
               }
            }
            else
            {
               §0r§ = §5g§;
               §5g§ = null;
            }
         }
      }
      
      public static function §35§() : String
      {
         return §5g§.substring(5);
      }
      
      public static function §]V§() : §7!K§
      {
         return §[O§[§%;§];
      }
      
      public static function §2!+§() : Boolean
      {
         return true;
      }
      
      public static function § !;§() : Boolean
      {
         var _loc1_:String = §6J§();
         var _loc2_:String = §]V§().§?3§(§5g§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §-!K§.§8Z§(_loc2_);
         }
         return true;
      }
      
      public static function §6J§() : String
      {
         return §]V§().§6J§(§5g§);
      }
   }
}
