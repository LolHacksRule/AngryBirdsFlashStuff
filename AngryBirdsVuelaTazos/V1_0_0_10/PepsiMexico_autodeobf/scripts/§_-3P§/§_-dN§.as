package §_-3P§
{
   import §_-KX§.§_-bf§;
   import §_-KX§.§try §;
   
   public class §_-dN§
   {
      
      private static var §_-45§:Array = null;
      
      private static var §_-ad§:Array = new Array();
      
      public static var §_-fy§:String = null;
      
      public static var §_-hW§:String = null;
      
      public static var §_-k5§:Boolean;
      
      public static var §_-Ni§:int = 0;
       
      
      public function §_-dN§()
      {
         super();
      }
      
      public static function §_-uN§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§_-SQ§ = null;
         var _loc4_:* = null;
         §_-45§ = new Array();
         for each(_loc2_ in param1.chapters)
         {
            _loc3_ = new §_-SQ§();
            _loc3_.levelsPerPage = _loc2_.levelsPerPage;
            _loc3_.name = _loc2_.name;
            _loc3_.menuImage = _loc2_.menuImage;
            _loc3_.§_-4T§ = _loc2_.leftCorner;
            _loc3_.§_-Ru§ = _loc2_.rightCorner;
            _loc3_.§_-iH§ = _loc2_.pageColors;
            _loc3_.pageIndexes = _loc2_.pageIndexes;
            _loc3_.levelButtons = _loc2_.levelButtons;
            if(_loc2_.cutscenes)
            {
               for(_loc4_ in _loc2_.cutscenes)
               {
                  _loc3_.§_-Oj§(_loc4_,_loc2_.cutscenes[_loc4_]);
               }
            }
            §_-45§.push(_loc3_);
         }
      }
      
      public static function §_-g1§() : void
      {
      }
      
      public static function §_-dz§(param1:String) : §_-SQ§
      {
         var _loc2_:§_-SQ§ = null;
         for each(_loc2_ in §_-45§)
         {
            if(_loc2_.§_-Dc§(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-Aa§(param1:int) : §_-SQ§
      {
         return §_-45§[param1];
      }
      
      public static function §_-F3§() : int
      {
         return §_-45§.length;
      }
      
      public static function §_-wm§(param1:String) : §_-ry§
      {
         if(!§_-ad§[param1])
         {
            throw new Error("Error! Level \'" + param1 + "\' does not exist.");
         }
         return §_-ad§[param1];
      }
      
      public static function §_-1k§(param1:String, param2:§_-ry§) : void
      {
         §_-ad§[param1] = param2;
      }
      
      public static function §_-fB§(param1:String, param2:int) : int
      {
         var _loc3_:§_-ry§ = §_-dN§.§_-wm§(param1);
         if(param2 <= 0)
         {
            return 0;
         }
         if(param2 < _loc3_.§_-h2§)
         {
            return 1;
         }
         if(param2 < _loc3_.§_-JR§)
         {
            return 2;
         }
         return 3;
      }
      
      public static function §_-Zx§(param1:String) : void
      {
         if(param1 != §_-fy§)
         {
            §_-hW§ = §_-fy§;
            §_-fy§ = param1;
         }
      }
      
      public static function §_-hX§() : String
      {
         return §_-fy§.substring(5);
      }
      
      public static function §_-3n§() : §_-SQ§
      {
         return §_-45§[§_-Ni§];
      }
      
      public static function §_-28§() : Boolean
      {
         return true;
      }
      
      public static function §_-HO§() : Boolean
      {
         var _loc1_:String = §_-XC§();
         var _loc2_:String = §_-3n§().§_-nC§(§_-fy§ + "-OUTRO");
         if(!_loc2_)
         {
            return false;
         }
         var _loc3_:§_-bf§ = §try §.§_-nC§(_loc2_);
         if(_loc1_ != null)
         {
            if(_loc1_.charAt(0) != §_-fy§.charAt(0))
            {
               return true;
            }
            return false;
         }
         _loc3_.§_-OX§ = §_-bf§.§_-rA§;
         return true;
      }
      
      public static function §_-XC§() : String
      {
         return §_-3n§().§_-XC§(§_-fy§);
      }
   }
}
