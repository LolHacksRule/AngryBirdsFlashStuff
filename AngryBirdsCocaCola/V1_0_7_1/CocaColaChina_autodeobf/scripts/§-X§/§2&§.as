package §-X§
{
   import §6p§.§3n§;
   
   public class §2&§
   {
      
      public static const §3!!§:String = "1-1";
      
      protected static var §!!R§:Array = null;
      
      protected static var §0]§:Array = [];
      
      protected static var §]!O§:Array = [];
      
      public static var §86§:String = null;
      
      public static var §!!d§:String = null;
      
      public static var §3!1§:Boolean;
      
      public static var §6q§:int = 0;
       
      
      public function §2&§()
      {
         super();
      }
      
      public static function §>1§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§0x§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §!!R§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §0x§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§4!A§ = _loc2_.leftCorner;
            _loc3_.§ ![§ = _loc2_.rightCorner;
            _loc3_.§"!8§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§`!§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §!!R§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §]!O§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §2!d§() : void
      {
      }
      
      public static function §%1§(param1:String) : §0x§
      {
         var _loc2_:§0x§ = null;
         for each(_loc2_ in §!!R§)
         {
            if(_loc2_.§^F§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §>?§(param1:String) : int
      {
         var _loc3_:§0x§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §!!R§.length)
         {
            _loc3_ = §!!R§[_loc2_];
            if(_loc3_.§^F§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §@^§(param1:int) : §0x§
      {
         return §!!R§[param1];
      }
      
      public static function §&1§(param1:String) : §0x§
      {
         var _loc2_:§0x§ = null;
         for each(_loc2_ in §!!R§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §?9§() : int
      {
         return §!!R§.length;
      }
      
      public static function §<t§(param1:String) : §5!F§
      {
         if(!§0]§[param1])
         {
            if(§]!O§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §0]§[param1];
      }
      
      public static function §'!^§(param1:String, param2:§5!F§) : void
      {
         §0]§[param1] = param2;
      }
      
      public static function §4`§(param1:String, param2:int) : int
      {
         var level:§5!F§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §2&§.§<t§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§1!M§)
         {
            return 1;
         }
         if(score < level.§8o§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §,!c§(param1:String) : String
      {
         if(!§]!O§[param1])
         {
            return §3!!§;
         }
         return param1;
      }
      
      public static function §do §(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§0x§ = null;
         if(param1 != §86§)
         {
            _loc2_ = §>?§(param1);
            if(_loc2_ >= 0)
            {
               §6q§ = _loc2_;
               §!!d§ = §86§;
               §86§ = param1;
               _loc3_ = §2!H§();
               if(_loc3_)
               {
                  _loc3_.§,!-§ = _loc3_.§<!&§(param1);
               }
            }
            else
            {
               §!!d§ = §86§;
               §86§ = null;
            }
         }
      }
      
      public static function §!§() : String
      {
         return §86§.substring(5);
      }
      
      public static function §2!H§() : §0x§
      {
         return §!!R§[§6q§];
      }
      
      public static function §6T§() : Boolean
      {
         return true;
      }
      
      public static function §#!-§() : Boolean
      {
         var _loc1_:String = §#P§();
         var _loc2_:String = §2!H§().§&!5§(§86§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §3n§.§?!,§(_loc2_);
         }
         return true;
      }
      
      public static function §#P§() : String
      {
         return §2!H§().§#P§(§86§);
      }
   }
}
