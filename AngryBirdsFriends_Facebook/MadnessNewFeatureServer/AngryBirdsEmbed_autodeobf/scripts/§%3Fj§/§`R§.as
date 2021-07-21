package §?j§
{
   import §`@§.§@6§;
   
   public class §`R§
   {
      
      public static const § !>§:String = "1-1";
      
      protected static var §]!,§:Array = null;
      
      protected static var §[!>§:Array = [];
      
      protected static var §,t§:Array = [];
      
      public static var §7S§:String = null;
      
      public static var §[D§:String = null;
      
      public static var §%!3§:Boolean;
      
      public static var §=o§:int = 0;
       
      
      public function §`R§()
      {
         super();
      }
      
      public static function §5B§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§!E§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §]!,§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §!E§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§4w§ = _loc2_.leftCorner;
            _loc3_.§^+§ = _loc2_.rightCorner;
            _loc3_.§49§ = _loc2_.pageColors;
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
            §]!,§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §,t§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §9s§() : void
      {
      }
      
      public static function §!?§(param1:String) : §!E§
      {
         var _loc2_:§!E§ = null;
         for each(_loc2_ in §]!,§)
         {
            if(_loc2_.§?!J§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §>E§(param1:String) : int
      {
         var _loc3_:§!E§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §]!,§.length)
         {
            _loc3_ = §]!,§[_loc2_];
            if(_loc3_.§?!J§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §<!I§(param1:int) : §!E§
      {
         return §]!,§[param1];
      }
      
      public static function §&o§(param1:String) : §!E§
      {
         var _loc2_:§!E§ = null;
         for each(_loc2_ in §]!,§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §[<§() : int
      {
         return §]!,§.length;
      }
      
      public static function §7!E§(param1:String) : §9?§
      {
         if(!§[!>§[param1])
         {
            if(§,t§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §[!>§[param1];
      }
      
      public static function §!m§(param1:String, param2:§9?§) : void
      {
         §[!>§[param1] = param2;
      }
      
      public static function §-'§(param1:String, param2:int) : int
      {
         var level:§9?§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §`R§.§7!E§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§[p§)
         {
            return 1;
         }
         if(score < level.§ get§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §&!2§(param1:String) : String
      {
         if(!§,t§[param1])
         {
            return § !>§;
         }
         return param1;
      }
      
      public static function §true §(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§!E§ = null;
         if(param1 != §7S§)
         {
            _loc2_ = §>E§(param1);
            if(_loc2_ >= 0)
            {
               §=o§ = _loc2_;
               §[D§ = §7S§;
               §7S§ = param1;
               _loc3_ = §7!!§();
               if(_loc3_)
               {
                  _loc3_.§"!;§ = _loc3_.§=7§(param1);
               }
            }
            else
            {
               §[D§ = §7S§;
               §7S§ = null;
            }
         }
      }
      
      public static function §#`§() : String
      {
         return §7S§.substring(5);
      }
      
      public static function §7!!§() : §!E§
      {
         return §]!,§[§=o§];
      }
      
      public static function §-U§() : Boolean
      {
         return true;
      }
      
      public static function §5!B§() : Boolean
      {
         var _loc1_:String = § 1§();
         var _loc2_:String = §7!!§().§8z§(§7S§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §@6§.§,K§(_loc2_);
         }
         return true;
      }
      
      public static function § 1§() : String
      {
         return §7!!§().§ 1§(§7S§);
      }
   }
}
