package §0E§
{
   import §,%§.§6G§;
   
   public class §-!F§
   {
      
      public static const §9!i§:String = "1-1";
      
      protected static var §[j§:Array = null;
      
      protected static var §1&§:Array = [];
      
      protected static var §1E§:Array = [];
      
      public static var §"!L§:String = null;
      
      public static var §4"8§:String = null;
      
      public static var §^!W§:Boolean;
      
      public static var §4"=§:int = 0;
       
      
      public function §-!F§()
      {
         super();
      }
      
      public static function §&I§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§<a§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §[j§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §<a§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§,"-§ = _loc2_.leftCorner;
            _loc3_.§6y§ = _loc2_.rightCorner;
            _loc3_.§,j§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§1!8§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §[j§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §1E§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §>"1§() : void
      {
      }
      
      public static function §#!q§(param1:String) : §<a§
      {
         var _loc2_:§<a§ = null;
         for each(_loc2_ in §[j§)
         {
            if(_loc2_.§0!&§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §,?§(param1:String) : int
      {
         var _loc3_:§<a§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §[j§.length)
         {
            _loc3_ = §[j§[_loc2_];
            if(_loc3_.§0!&§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §#3§(param1:int) : §<a§
      {
         return §[j§[param1];
      }
      
      public static function §9m§(param1:String) : §<a§
      {
         var _loc2_:§<a§ = null;
         for each(_loc2_ in §[j§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §"![§() : int
      {
         return §[j§.length;
      }
      
      public static function §,!_§(param1:String) : §#O§
      {
         if(!§1&§[param1])
         {
            if(§1E§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §1&§[param1];
      }
      
      public static function §^D§(param1:String, param2:§#O§) : void
      {
         §1&§[param1] = param2;
      }
      
      public static function §<!t§(param1:String, param2:int) : int
      {
         var level:§#O§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §-!F§.§,!_§(levelId);
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
      
      public static function § !k§(param1:String) : String
      {
         if(!§1E§[param1])
         {
            return §9!i§;
         }
         return param1;
      }
      
      public static function loadLevel(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§<a§ = null;
         if(param1 != §"!L§)
         {
            _loc2_ = §,?§(param1);
            if(_loc2_ >= 0)
            {
               §4"=§ = _loc2_;
               §4"8§ = §"!L§;
               §"!L§ = param1;
               _loc3_ = §%!R§();
               if(_loc3_)
               {
                  _loc3_.§"?§ = _loc3_.§9W§(param1);
               }
            }
            else
            {
               §4"8§ = §"!L§;
               §"!L§ = null;
            }
         }
      }
      
      public static function §;"-§() : String
      {
         return §"!L§.substring(5);
      }
      
      public static function §%!R§() : §<a§
      {
         return §[j§[§4"=§];
      }
      
      public static function §9t§() : Boolean
      {
         return true;
      }
      
      public static function §5j§() : Boolean
      {
         var _loc1_:String = §?!K§();
         var _loc2_:String = §%!R§().§?";§(§"!L§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §6G§.§]!§(_loc2_);
         }
         return true;
      }
      
      public static function §?!K§() : String
      {
         return §%!R§().§?!K§(§"!L§);
      }
   }
}
