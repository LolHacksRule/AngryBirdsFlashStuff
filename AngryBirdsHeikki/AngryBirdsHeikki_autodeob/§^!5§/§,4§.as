package §^!5§
{
   import §7Z§.§5!>§;
   
   public class §,4§
   {
      
      public static const §9!&§:String = "1-1";
      
      protected static var §&!I§:Array = null;
      
      protected static var § A§:Array = [];
      
      protected static var §49§:Array = [];
      
      public static var §0!$§:String = null;
      
      public static var §<A§:String = null;
      
      public static var §58§:Boolean;
      
      public static var §>j§:int = 0;
       
      
      public function §,4§()
      {
         super();
      }
      
      public static function § ,§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§0M§ = null;
         var _loc4_:String = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         §&!I§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §0M§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§4!8§ = _loc2_.leftCorner;
            _loc3_.§2N§ = _loc2_.rightCorner;
            _loc3_.§1!4§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            _loc3_.writtenName = _loc2_.writtenName;
            if(_loc2_.cutscenes)
            {
               for(_loc5_ in _loc2_.cutscenes)
               {
                  _loc3_.§7W§(_loc5_,_loc2_.cutscenes[_loc5_]);
               }
            }
            §&!I§.push(_loc3_);
            for each(_loc4_ in _loc3_.pageIndexes)
            {
               _loc6_ = 1;
               while(_loc6_ <= _loc3_.levelsPerPage)
               {
                  §49§[_loc4_ + "-" + _loc6_] = _loc3_.name;
                  _loc6_++;
               }
            }
         }
      }
      
      public static function §<S§() : void
      {
      }
      
      public static function §5!=§(param1:String) : §0M§
      {
         var _loc2_:§0M§ = null;
         for each(_loc2_ in §&!I§)
         {
            if(_loc2_.§6!^§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<!f§(param1:String) : int
      {
         var _loc3_:§0M§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < §&!I§.length)
         {
            _loc3_ = §&!I§[_loc2_];
            if(_loc3_.§6!^§(param1))
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public static function §5A§(param1:int) : §0M§
      {
         return §&!I§[param1];
      }
      
      public static function §,!8§(param1:String) : §0M§
      {
         var _loc2_:§0M§ = null;
         for each(_loc2_ in §&!I§)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §#o§() : int
      {
         return §&!I§.length;
      }
      
      public static function §6W§(param1:String) : §&!E§
      {
         if(!§ A§[param1])
         {
            if(§49§[param1] == null)
            {
               throw new Error("Error! Level \'" + param1 + "\' does not exist.");
            }
         }
         return § A§[param1];
      }
      
      public static function §]!+§(param1:String, param2:§&!E§) : void
      {
         § A§[param1] = param2;
      }
      
      public static function §8F§(param1:String, param2:int) : int
      {
         var level:§&!E§ = null;
         var levelId:String = param1;
         var score:int = param2;
         try
         {
            level = §,4§.§6W§(levelId);
         }
         catch(e:Error)
         {
         }
         if(score <= 0)
         {
            return 0;
         }
         if(score < level.§@Y§)
         {
            return 1;
         }
         if(score < level.§=!F§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §`Y§(param1:String) : String
      {
         if(!§49§[param1])
         {
            return §9!&§;
         }
         return param1;
      }
      
      public static function §&O§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§0M§ = null;
         if(param1 != §0!$§)
         {
            _loc2_ = §<!f§(param1);
            if(_loc2_ >= 0)
            {
               §>j§ = _loc2_;
               §<A§ = §0!$§;
               §0!$§ = param1;
               _loc3_ = §?!>§();
               if(_loc3_)
               {
                  _loc3_.§2l§ = _loc3_.§3c§(param1);
               }
            }
            else
            {
               §<A§ = §0!$§;
               §0!$§ = null;
            }
         }
      }
      
      public static function §>$§() : String
      {
         return §0!$§.substring(5);
      }
      
      public static function §?!>§() : §0M§
      {
         return §&!I§[§>j§];
      }
      
      public static function §%e§() : Boolean
      {
         return true;
      }
      
      public static function §;l§() : Boolean
      {
         var _loc1_:String = §;!4§();
         var _loc2_:String = §?!>§().§4V§(§0!$§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         if(_loc1_ == null)
         {
            §5!>§.§3G§(_loc2_);
         }
         return true;
      }
      
      public static function §;!4§() : String
      {
         return §?!>§().§;!4§(§0!$§);
      }
   }
}
