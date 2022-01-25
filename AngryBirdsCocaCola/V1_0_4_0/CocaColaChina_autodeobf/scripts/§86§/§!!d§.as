package §86§
{
   import §3n§.§2!C§;
   
   public class §!!d§
   {
      
      public static const §3!1§:String = "1-1";
      
      protected static var §6q§:Array = null;
      
      protected static var §>1§:Array = [];
      
      protected static var §2!d§:Array = [];
      
      public static var §%1§:String = null;
      
      public static var §>?§:String = null;
      
      public static var §@^§:Boolean;
      
      public static var §&1§:int = 0;
       
      
      public function §!!d§()
      {
         super();
      }
      
      public static function §?9§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§[!$§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §6q§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §[!$§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§ 7§ = _loc2_.leftCorner;
            _loc3_.§9`§ = _loc2_.rightCorner;
            _loc3_.§5!F§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§-!6§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §6q§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §2!d§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §<t§() : void
      {
      }
      
      public static function §'!^§(param1:String) : §[!$§
      {
         var _loc2_:§[!$§ = null;
         for each(_loc2_ in §6q§)
         {
            if(_loc2_.§`!§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §4`§(param1:String) : int
      {
         var _loc3_:§[!$§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §6q§.length)
         {
            _loc3_ = §6q§[_loc2_];
            if(_loc3_.§`!§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §,!c§(param1:int) : §[!$§
      {
         return §6q§[param1];
      }
      
      public static function §!§() : int
      {
         return §6q§.length;
      }
      
      public static function §2!H§(param1:String) : §9]§
      {
         if(!§>1§[param1])
         {
            if(§2!d§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §>1§[param1];
      }
      
      public static function §6T§(param1:String, param2:§9]§) : void
      {
         §>1§[param1] = param2;
      }
      
      public static function §#!-§(param1:String, param2:int) : int
      {
         var level:§9]§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §!!d§.§2!H§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§ !`§)
         {
            return 1;
         }
         if(score < level.§,2§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §#P§(param1:String) : String
      {
         if(!§2!d§[param1])
         {
            return §3!1§;
         }
         return param1;
      }
      
      public static function §do §(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§[!$§ = null;
         if(param1 != §%1§)
         {
            _loc2_ = §4`§(param1);
            if(_loc2_ >= 0)
            {
               §&1§ = _loc2_;
               §>?§ = §%1§;
               §%1§ = param1;
               _loc3_ = §+0§();
               if(_loc3_)
               {
                  _loc3_.§[G§ = _loc3_.§4!A§(param1);
               }
            }
            else
            {
               §>?§ = §%1§;
               §%1§ = null;
            }
         }
      }
      
      public static function §0x§() : String
      {
         return §%1§.substring(5);
      }
      
      public static function §+0§() : §[!$§
      {
         return §6q§[§&1§];
      }
      
      public static function §^!a§() : Boolean
      {
         return true;
      }
      
      public static function §`$§() : Boolean
      {
         var _loc1_:String = §;[§();
         var _loc2_:String = §+0§().§;e§(§%1§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §2!C§.§^=§(_loc2_);
         }
         return true;
      }
      
      public static function §;[§() : String
      {
         return §+0§().§;[§(§%1§);
      }
   }
}
