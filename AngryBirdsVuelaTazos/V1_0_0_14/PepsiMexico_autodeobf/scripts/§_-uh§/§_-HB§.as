package §_-uh§
{
   import §_-Wy§.§_-JO§;
   import §_-Wy§.§_-qj§;
   
   public class §_-HB§
   {
      
      private static var §_-Hx§:Array = null;
      
      private static var §_-b§:Array = new Array();
      
      public static var §_-Z-§:String = null;
      
      public static var §_-5p§:String = null;
      
      public static var §_-kO§:Boolean;
      
      public static var §_-4z§:int = 0;
       
      
      public function §_-HB§()
      {
         super();
      }
      
      public static function override(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-z3§ = null;
         var _loc4_:* = null;
         §_-Hx§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-z3§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-Km§ = _loc2_.leftCorner;
            _loc3_.§_-vE§ = _loc2_.rightCorner;
            _loc3_.§_-F1§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-uL§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            §_-Hx§.push(_loc3_);
         }
      }
      
      public static function §_-ZJ§() : void
      {
      }
      
      public static function §_-Om§(param1:String) : §_-z3§
      {
         var _loc2_:§_-z3§ = null;
         for each(_loc2_ in §_-Hx§)
         {
            if(_loc2_.§_-Of§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-nA§(param1:int) : §_-z3§
      {
         return §_-Hx§[param1];
      }
      
      public static function §_-k0§() : int
      {
         return §_-Hx§.length;
      }
      
      public static function §_-ap§(param1:String) : §_-US§
      {
         if(!§_-b§[param1])
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return §_-b§[param1];
      }
      
      public static function §_-Tm§(param1:String, param2:§_-US§) : void
      {
         §_-b§[param1] = param2;
      }
      
      public static function §_-1m§(param1:String, param2:int) : int
      {
         var _loc3_:§_-US§ = §_-HB§.§_-ap§(param1);
         if(param2 <= 0)
         {
            return 0;
         }
         if(param2 < _loc3_.§_-Ti§)
         {
            return 1;
         }
         if(param2 < _loc3_.§_-Fj§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-8e§(param1:String) : void
      {
         if(param1 != §_-Z-§)
         {
            §_-5p§ = §_-Z-§;
            §_-Z-§ = param1;
         }
      }
      
      public static function §_-Id§() : String
      {
         return §_-Z-§.substring(5);
      }
      
      public static function §_-Ub§() : §_-z3§
      {
         return §_-Hx§[§_-4z§];
      }
      
      public static function §_-Np§() : Boolean
      {
         return true;
      }
      
      public static function §_-Ch§() : Boolean
      {
         var _loc1_:String = §_-ru§();
         var _loc2_:String = §_-Ub§().§_-un§(§_-Z-§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         var _loc3_:§_-JO§ = §_-qj§.§_-un§(_loc2_);
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-Z-§.charAt(0))
            {
               return true;
            }
            return false;
         }
         _loc3_.§_-Q9§ = §_-JO§.§_-97§;
         return true;
      }
      
      public static function §_-ru§() : String
      {
         return §_-Ub§().§_-ru§(§_-Z-§);
      }
   }
}
