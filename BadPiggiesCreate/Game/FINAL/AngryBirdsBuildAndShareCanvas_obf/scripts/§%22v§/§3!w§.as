package §"v§
{
   import §%%§.§5!a§;
   
   public class §3!w§
   {
      
      public static const § for§:String = "1-1";
      
      protected static var §=9§:Array = null;
      
      protected static var §'v§:Array = [];
      
      protected static var §&A§:Array = [];
      
      public static var §%n§:String = null;
      
      public static var §8H§:String = null;
      
      public static var §6!"§:Boolean;
      
      public static var §&"&§:int = 0;
       
      
      public function §3!w§()
      {
         super();
      }
      
      public static function §'!9§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§"! § = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §=9§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §"! §();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§#!"§ = _loc2_.leftCorner;
            _loc3_.§`%§ = _loc2_.rightCorner;
            _loc3_.§>!j§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§7"#§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §=9§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §&A§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §!b§() : void
      {
      }
      
      public static function §>! §(param1:String) : §"! §
      {
         var _loc2_:§"! § = null;
         for each(_loc2_ in §=9§)
         {
            if(_loc2_.§3!q§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §?!#§(param1:String) : int
      {
         var _loc3_:§"! § = null;
         var _loc2_:int = 0;
         while(_loc2_ < §=9§.length)
         {
            _loc3_ = §=9§[_loc2_];
            if(_loc3_.§3!q§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §2I§(param1:int) : §"! §
      {
         return §=9§[param1];
      }
      
      public static function §^O§(param1:String) : §"! §
      {
         var _loc2_:§"! § = null;
         for each(_loc2_ in §=9§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §!K§() : int
      {
         return §=9§.length;
      }
      
      public static function §7%§(param1:String) : §9"§
      {
         if(!§'v§[param1])
         {
            if(§&A§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §'v§[param1];
      }
      
      public static function §3c§(param1:String, param2:§9"§) : void
      {
         §'v§[param1] = param2;
      }
      
      public static function §^"3§(param1:String, param2:int) : int
      {
         var level:§9"§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §3!w§.§7%§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.mScoreSilver)
         {
            return 1;
         }
         if(score < level.mScoreGold)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §'f§(param1:String) : String
      {
         if(!§&A§[param1])
         {
            return § for§;
         }
         return param1;
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§"! § = null;
         if(param1 != §%n§)
         {
            _loc2_ = §?!#§(param1);
            if(_loc2_ >= 0)
            {
               §&"&§ = _loc2_;
               §8H§ = §%n§;
               §%n§ = param1;
               _loc3_ = §4I§();
               if(_loc3_)
               {
                  _loc3_.§@!M§ = _loc3_.§8M§(param1);
               }
            }
            else
            {
               §8H§ = §%n§;
               §%n§ = null;
            }
         }
      }
      
      public static function §#!e§() : String
      {
         return §%n§.substring(5);
      }
      
      public static function §4I§() : §"! §
      {
         return §=9§[§&"&§];
      }
      
      public static function §1!y§() : Boolean
      {
         return true;
      }
      
      public static function §4k§() : Boolean
      {
         var _loc1_:String = §;d§();
         var _loc2_:String = §4I§().§3!2§(§%n§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §5!a§.§;t§(_loc2_);
         }
         return true;
      }
      
      public static function §;d§() : String
      {
         return §4I§().§;d§(§%n§);
      }
   }
}
