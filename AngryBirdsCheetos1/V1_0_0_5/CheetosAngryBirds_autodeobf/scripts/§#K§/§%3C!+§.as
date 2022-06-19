package §#K§
{
   import §%j§.§8a§;
   
   public class §<!+§
   {
      
      public static const §[!!§:String = "1-1";
      
      protected static var §`k§:Array = null;
      
      protected static var § [§:Array = [];
      
      protected static var §&r§:Array = [];
      
      public static var §^R§:String = null;
      
      public static var §7!F§:String = null;
      
      public static var §7R§:Boolean;
      
      public static var §"#§:int = 0;
       
      
      public function §<!+§()
      {
         super();
      }
      
      public static function §"U§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§"f§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §`k§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §"f§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§%F§ = _loc2_.leftCorner;
            _loc3_.§+y§ = _loc2_.rightCorner;
            _loc3_.§#!Y§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§2!J§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §`k§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §&r§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §4;§() : void
      {
      }
      
      public static function §?!Q§(param1:String) : §"f§
      {
         var _loc2_:§"f§ = null;
         for each(_loc2_ in §`k§)
         {
            if(_loc2_.§&A§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5S§(param1:String) : int
      {
         var _loc3_:§"f§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §`k§.length)
         {
            _loc3_ = §`k§[_loc2_];
            if(_loc3_.§&A§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function § F§(param1:int) : §"f§
      {
         return §`k§[param1];
      }
      
      public static function §,3§() : int
      {
         return §`k§.length;
      }
      
      public static function §@i§(param1:String) : §?I§
      {
         if(!§ [§[param1])
         {
            if(§&r§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return § [§[param1];
      }
      
      public static function §1L§(param1:String, param2:§?I§) : void
      {
         § [§[param1] = param2;
      }
      
      public static function §,!Q§(param1:String, param2:int) : int
      {
         var level:§?I§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §<!+§.§@i§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§8H§)
         {
            return 1;
         }
         if(score < level.§<!D§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §``§(param1:String) : String
      {
         if(!§&r§[param1])
         {
            return §[!!§;
         }
         return param1;
      }
      
      public static function §,s§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§"f§ = null;
         if(param1 != §^R§)
         {
            _loc2_ = §5S§(param1);
            if(_loc2_ >= 0)
            {
               §"#§ = _loc2_;
               §7!F§ = §^R§;
               §^R§ = param1;
               _loc3_ = §9E§();
               if(_loc3_)
               {
                  _loc3_.currentPage = _loc3_.§^!!§(param1);
               }
            }
            else
            {
               §7!F§ = §^R§;
               §^R§ = null;
            }
         }
      }
      
      public static function §[N§() : String
      {
         return §^R§.substring(5);
      }
      
      public static function §9E§() : §"f§
      {
         return §`k§[§"#§];
      }
      
      public static function §9!!§() : Boolean
      {
         return true;
      }
      
      public static function §@l§() : Boolean
      {
         var _loc1_:String = §+i§();
         var _loc2_:String = §9E§().§2!+§(§^R§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §^R§.charAt(0))
            {
               return true;
            }
            return false;
         }
         §8a§.§]Q§(_loc2_);
         return true;
      }
      
      public static function §+i§() : String
      {
         return §9E§().§+i§(§^R§);
      }
   }
}
