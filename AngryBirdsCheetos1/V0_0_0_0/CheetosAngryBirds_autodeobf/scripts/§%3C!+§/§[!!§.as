package §<!+§
{
   import §8a§.§[!7§;
   
   public class §[!!§
   {
      
      public static const §`k§:String = "1-1";
      
      protected static var § [§:Array = null;
      
      protected static var §&r§:Array = [];
      
      protected static var §^R§:Array = [];
      
      public static var §7!F§:String = null;
      
      public static var §7R§:String = null;
      
      public static var §"#§:Boolean;
      
      public static var §"U§:int = 0;
       
      
      public function §[!!§()
      {
         super();
      }
      
      public static function §4;§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§2s§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         § [§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §2s§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§+y§ = _loc2_.leftCorner;
            _loc3_.§9!-§ = _loc2_.rightCorner;
            _loc3_.§2!J§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§2!+§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            § [§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §^R§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §?!Q§() : void
      {
      }
      
      public static function §5S§(param1:String) : §2s§
      {
         var _loc2_:§2s§ = null;
         for each(_loc2_ in § [§)
         {
            if(_loc2_.§<!A§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function § F§(param1:String) : int
      {
         var _loc3_:§2s§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < § [§.length)
         {
            _loc3_ = § [§[_loc2_];
            if(_loc3_.§<!A§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §,3§(param1:int) : §2s§
      {
         return § [§[param1];
      }
      
      public static function §@i§() : int
      {
         return § [§.length;
      }
      
      public static function §1L§(param1:String) : §with§
      {
         if(!§&r§[param1])
         {
            if(§^R§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return §&r§[param1];
      }
      
      public static function §,!Q§(param1:String, param2:§with§) : void
      {
         §&r§[param1] = param2;
      }
      
      public static function §``§(param1:String, param2:int) : int
      {
         var level:§with§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §[!!§.§1L§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§<!D§)
         {
            return 1;
         }
         if(score < level.§ !§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §[N§(param1:String) : String
      {
         if(!§^R§[param1])
         {
            return §`k§;
         }
         return param1;
      }
      
      public static function §,s§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§2s§ = null;
         if(param1 != §7!F§)
         {
            _loc2_ = § F§(param1);
            if(_loc2_ >= 0)
            {
               §"U§ = _loc2_;
               §7R§ = §7!F§;
               §7!F§ = param1;
               _loc3_ = §9!!§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§,!E§(param1);
               }
            }
            else
            {
               §7R§ = §7!F§;
               §7!F§ = null;
            }
         }
      }
      
      public static function §9E§() : String
      {
         return §7!F§.substring(5);
      }
      
      public static function §9!!§() : §2s§
      {
         return § [§[§"U§];
      }
      
      public static function §@l§() : Boolean
      {
         return true;
      }
      
      public static function §+i§() : Boolean
      {
         var _loc1_:String = §?I§();
         var _loc2_:String = §9!!§().§%F§(§7!F§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §7!F§.charAt(0))
            {
               return true;
            }
            return false;
         }
         §[!7§.§#!,§(_loc2_);
         return true;
      }
      
      public static function §?I§() : String
      {
         return §9!!§().§?I§(§7!F§);
      }
   }
}
