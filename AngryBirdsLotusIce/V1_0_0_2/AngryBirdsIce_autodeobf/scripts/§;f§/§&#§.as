package §;f§
{
   import §[!8§.§7!1§;
   
   public class §&#§
   {
      
      public static const §-G§:String = "1-1";
      
      protected static var §-_§:Array = null;
      
      protected static var §1b§:Array = [];
      
      protected static var §!O§:Array = [];
      
      public static var §<Y§:String = null;
      
      public static var §=Q§:String = null;
      
      public static var §+@§:Boolean;
      
      public static var §3!@§:int = 0;
       
      
      public function §&#§()
      {
         super();
      }
      
      public static function §1K§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§9y§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §-_§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §9y§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§&C§ = _loc2_.leftCorner;
            _loc3_.§!F§ = _loc2_.rightCorner;
            _loc3_.§2n§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§1<§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §-_§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §!O§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §3R§() : void
      {
      }
      
      public static function §+!3§(param1:String) : §9y§
      {
         var _loc2_:§9y§ = null;
         for each(_loc2_ in §-_§)
         {
            if(_loc2_.§^5§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5!E§(param1:String) : int
      {
         var _loc3_:§9y§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §-_§.length)
         {
            _loc3_ = §-_§[_loc2_];
            if(_loc3_.§^5§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §0+§(param1:int) : §9y§
      {
         return §-_§[param1];
      }
      
      public static function §5[§() : int
      {
         return §-_§.length;
      }
      
      public static function §@y§(param1:String) : §^o§
      {
         if(!§1b§[param1])
         {
            if(§!O§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §1b§[param1];
      }
      
      public static function §3K§(param1:String, param2:§^o§) : void
      {
         §1b§[param1] = param2;
      }
      
      public static function §3I§(param1:String, param2:int) : int
      {
         var level:§^o§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §&#§.§@y§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§7!B§)
         {
            return 1;
         }
         if(score < level.§>V§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §9j§(param1:String) : String
      {
         if(!§!O§[param1])
         {
            return §-G§;
         }
         return param1;
      }
      
      public static function §9,§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§9y§ = null;
         if(param1 != §<Y§)
         {
            _loc2_ = §5!E§(param1);
            if(_loc2_ >= 0)
            {
               §3!@§ = _loc2_;
               §=Q§ = §<Y§;
               §<Y§ = param1;
               _loc3_ = § for§();
               if(_loc3_)
               {
                  _loc3_.§8w§ = _loc3_.§4L§(param1);
               }
            }
            else
            {
               §=Q§ = §<Y§;
               §<Y§ = null;
            }
         }
      }
      
      public static function §"D§() : String
      {
         return §<Y§.substring(5);
      }
      
      public static function § for§() : §9y§
      {
         return §-_§[§3!@§];
      }
      
      public static function §2`§() : Boolean
      {
         return true;
      }
      
      public static function §7!E§() : Boolean
      {
         var _loc1_:String = §6!§();
         var _loc2_:String = § for§().§#$§(§<Y§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §7!1§.§%B§(_loc2_);
         }
         return true;
      }
      
      public static function §6!§() : String
      {
         return § for§().§6!§(§<Y§);
      }
   }
}
