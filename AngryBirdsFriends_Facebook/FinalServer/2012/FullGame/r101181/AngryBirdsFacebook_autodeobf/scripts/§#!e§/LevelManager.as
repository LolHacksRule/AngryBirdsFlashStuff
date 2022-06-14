package §#!e§
{
   import §`!]§.§3x§;
   
   public class LevelManager
   {
      
      public static const §%!§:String = "1-1";
      
      protected static var §=s§:Array = null;
      
      protected static var §2!U§:Array = [];
      
      protected static var §`!3§:Array = [];
      
      public static var §'!O§:String = null;
      
      public static var §+!;§:String = null;
      
      public static var §<!S§:Boolean;
      
      public static var §2?§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §!"@§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§>x§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §=s§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §>x§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§return§ = _loc2_.leftCorner;
            _loc3_.§!!u§ = _loc2_.rightCorner;
            _loc3_.§7f§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§9!j§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §=s§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §`!3§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §]!U§() : void
      {
      }
      
      public static function §^_§(param1:String) : §>x§
      {
         var _loc2_:§>x§ = null;
         for each(_loc2_ in §=s§)
         {
            if(_loc2_.§2"C§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<`§(param1:String) : int
      {
         var _loc3_:§>x§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §=s§.length)
         {
            _loc3_ = §=s§[_loc2_];
            if(_loc3_.§2"C§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §;X§(param1:int) : §>x§
      {
         return §=s§[param1];
      }
      
      public static function §5!W§(param1:String) : §>x§
      {
         var _loc2_:§>x§ = null;
         for each(_loc2_ in §=s§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §@!N§() : int
      {
         return §=s§.length;
      }
      
      public static function §1A§(param1:String) : §1"B§
      {
         if(!§2!U§[param1])
         {
            if(§`!3§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §2!U§[param1];
      }
      
      public static function §!!w§(param1:String, param2:§1"B§) : void
      {
         §2!U§[param1] = param2;
      }
      
      public static function §`!^§(param1:String, param2:int) : int
      {
         var level:§1"B§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§1A§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§4Z§)
         {
            return 1;
         }
         if(score < level.§-z§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §;!f§(param1:String) : String
      {
         if(!§`!3§[param1])
         {
            return §%!§;
         }
         return param1;
      }
      
      public static function §-!4§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§>x§ = null;
         if(param1 != §'!O§)
         {
            _loc2_ = §<`§(param1);
            if(_loc2_ >= 0)
            {
               §2?§ = _loc2_;
               §+!;§ = §'!O§;
               §'!O§ = param1;
               _loc3_ = §9"D§();
               if(_loc3_)
               {
                  _loc3_.§9!f§ = _loc3_.§3"0§(param1);
               }
            }
            else
            {
               §+!;§ = §'!O§;
               §'!O§ = null;
            }
         }
      }
      
      public static function §?!i§() : String
      {
         return §'!O§.substring(5);
      }
      
      public static function §9"D§() : §>x§
      {
         return §=s§[§2?§];
      }
      
      public static function §=H§() : Boolean
      {
         return true;
      }
      
      public static function §%^§() : Boolean
      {
         var _loc1_:String = §6!M§();
         var _loc2_:String = §9"D§().§<!5§(§'!O§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §3x§.§<!'§(_loc2_);
         }
         return true;
      }
      
      public static function §6!M§() : String
      {
         return §9"D§().§6!M§(§'!O§);
      }
   }
}
