package §"!i§
{
   import §=I§.§6g§;
   
   public class LevelManager
   {
      
      public static const §&!r§:String = "1-1";
      
      protected static var §5!t§:Array = null;
      
      protected static var §-!y§:Array = [];
      
      protected static var §'I§:Array = [];
      
      public static var §"L§:String = null;
      
      public static var §>l§:String = null;
      
      public static var §-!v§:Boolean;
      
      public static var §`^§:int = 0;
       
      
      public function LevelManager()
      {
         super();
      }
      
      public static function §?=§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§8K§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §5!t§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §8K§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§?E§ = _loc2_.leftCorner;
            _loc3_.§2?§ = _loc2_.rightCorner;
            _loc3_.§83§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§]!'§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §5!t§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §'I§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §@!Q§() : void
      {
      }
      
      public static function §`r§(param1:String) : §8K§
      {
         var _loc2_:§8K§ = null;
         for each(_loc2_ in §5!t§)
         {
            if(_loc2_.§9w§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<Q§(param1:String) : int
      {
         var _loc3_:§8K§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §5!t§.length)
         {
            _loc3_ = §5!t§[_loc2_];
            if(_loc3_.§9w§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §!!A§(param1:int) : §8K§
      {
         return §5!t§[param1];
      }
      
      public static function §`H§(param1:String) : §8K§
      {
         var _loc2_:§8K§ = null;
         for each(_loc2_ in §5!t§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §%!1§() : int
      {
         return §5!t§.length;
      }
      
      public static function §"!l§(param1:String) : §"!'§
      {
         if(!§-!y§[param1])
         {
            if(§'I§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §-!y§[param1];
      }
      
      public static function §8g§(param1:String, param2:§"!'§) : void
      {
         §-!y§[param1] = param2;
      }
      
      public static function §2!&§(param1:String, param2:int) : int
      {
         var level:§"!'§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = LevelManager.§"!l§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§2!m§)
         {
            return 1;
         }
         if(score < level.§;"$§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §5l§(param1:String) : String
      {
         if(!§'I§[param1])
         {
            return §&!r§;
         }
         return param1;
      }
      
      public static function §`!O§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§8K§ = null;
         if(param1 != §"L§)
         {
            _loc2_ = §<Q§(param1);
            if(_loc2_ >= 0)
            {
               §`^§ = _loc2_;
               §>l§ = §"L§;
               §"L§ = param1;
               _loc3_ = §+!$§();
               if(_loc3_)
               {
                  _loc3_.§9J§ = _loc3_.§%-§(param1);
               }
            }
            else
            {
               §>l§ = §"L§;
               §"L§ = null;
            }
         }
      }
      
      public static function §=X§() : String
      {
         return §"L§.substring(5);
      }
      
      public static function §+!$§() : §8K§
      {
         return §5!t§[§`^§];
      }
      
      public static function §+!D§() : Boolean
      {
         return true;
      }
      
      public static function §7v§() : Boolean
      {
         var _loc1_:String = §8`§();
         var _loc2_:String = §+!$§().§8!O§(§"L§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §6g§.§6!!§(_loc2_);
         }
         return true;
      }
      
      public static function §8`§() : String
      {
         return §+!$§().§8`§(§"L§);
      }
   }
}
