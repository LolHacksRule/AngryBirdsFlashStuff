package §8!G§
{
   import §]f§.§06§;
   
   public class §-Z§
   {
      
      public static const §5a§:String = "1-1";
      
      protected static var §%!&§:Array = null;
      
      protected static var §+g§:Array = [];
      
      protected static var §5s§:Array = [];
      
      public static var §%s§:String = null;
      
      public static var §,!#§:String = null;
      
      public static var §4#§:Boolean;
      
      public static var §@!$§:int = 0;
       
      
      public function §-Z§()
      {
         super();
      }
      
      public static function §[§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§>!C§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §%!&§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §>!C§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§`!A§ = _loc2_.leftCorner;
            _loc3_.§2;§ = _loc2_.rightCorner;
            _loc3_.§2%§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§"[§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §%!&§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §5s§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §`H§() : void
      {
      }
      
      public static function § H§(param1:String) : §>!C§
      {
         var _loc2_:§>!C§ = null;
         for each(_loc2_ in §%!&§)
         {
            if(_loc2_.§[e§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §@6§(param1:String) : int
      {
         var _loc3_:§>!C§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §%!&§.length)
         {
            _loc3_ = §%!&§[_loc2_];
            if(_loc3_.§[e§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §=!<§(param1:int) : §>!C§
      {
         return §%!&§[param1];
      }
      
      public static function §9m§(param1:String) : §>!C§
      {
         var _loc2_:§>!C§ = null;
         for each(_loc2_ in §%!&§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §`I§() : int
      {
         return §%!&§.length;
      }
      
      public static function §4! §(param1:String) : §1w§
      {
         if(!§+g§[param1])
         {
            if(§5s§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §+g§[param1];
      }
      
      public static function §6!-§(param1:String, param2:§1w§) : void
      {
         §+g§[param1] = param2;
      }
      
      public static function §4!=§(param1:String, param2:int) : int
      {
         var level:§1w§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §-Z§.§4! §(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§""§)
         {
            return 1;
         }
         if(score < level.§@K§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §"!@§(param1:String) : String
      {
         if(!§5s§[param1])
         {
            return §5a§;
         }
         return param1;
      }
      
      public static function §;k§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§>!C§ = null;
         if(param1 != §%s§)
         {
            _loc2_ = §@6§(param1);
            if(_loc2_ >= 0)
            {
               §@!$§ = _loc2_;
               §,!#§ = §%s§;
               §%s§ = param1;
               _loc3_ = §?!!§();
               if(_loc3_)
               {
                  _loc3_.§function§ = _loc3_.§-!2§(param1);
               }
            }
            else
            {
               §,!#§ = §%s§;
               §%s§ = null;
            }
         }
      }
      
      public static function §43§() : String
      {
         return §%s§.substring(5);
      }
      
      public static function §?!!§() : §>!C§
      {
         return §%!&§[§@!$§];
      }
      
      public static function §,b§() : Boolean
      {
         return true;
      }
      
      public static function §0L§() : Boolean
      {
         var _loc1_:String = §'Z§();
         var _loc2_:String = §?!!§().§3A§(§%s§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §06§.§6!,§(_loc2_);
         }
         return true;
      }
      
      public static function §'Z§() : String
      {
         return §?!!§().§'Z§(§%s§);
      }
   }
}
