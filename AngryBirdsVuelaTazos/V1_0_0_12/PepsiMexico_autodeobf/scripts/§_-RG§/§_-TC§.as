package §_-RG§
{
   import §_-vA§.§_-XO§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-TC§ extends Sprite
   {
      
      private static var §_-5x§:Boolean = false;
      
      private static const §_-QS§:String = "Mouse_Cursors";
      
      private static var §_-z§:Sprite;
      
      private static var §_-ir§:MovieClip;
      
      private static var §_-lU§:String;
      
      private static var §_-4q§:String = "";
      
      private static var §_-HX§:Boolean = false;
       
      
      public function §_-TC§()
      {
         super();
      }
      
      public static function §_-mm§(param1:String) : Boolean
      {
         if(§_-lU§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-lU§ = "";
         §_-HX§ = false;
         if(!§_-5x§ || !§_-ir§)
         {
            if(!§_-nq§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-ir§.numChildren)
         {
            §_-ir§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-ir§.getChildByName(param1) as Sprite))
         {
            §_-ir§.visible = false;
            Mouse.show();
            return false;
         }
         §_-lU§ = param1;
         §_-ir§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-lU§ + "_Up"))
         {
            §_-HX§ = true;
         }
         if(§_-HX§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-lU§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-nq§() : Boolean
      {
         var _loc1_:Class = §_-XO§.§_-O3§(§_-QS§);
         §_-ir§ = new _loc1_();
         if(§_-ir§)
         {
            §_-z§.addChild(§_-ir§);
            §_-z§.mouseChildren = false;
            §_-ir§.mouseEnabled = false;
            §_-z§.mouseEnabled = false;
            §_-ir§.enabled = false;
            §_-ir§.cacheAsBitmap = true;
         }
         return §_-ir§ != null;
      }
      
      public static function §_-km§() : Boolean
      {
         return §_-jj§("_Down");
      }
      
      public static function §_-cj§() : Boolean
      {
         return §_-jj§("_Up");
      }
      
      private static function §_-jj§(param1:String) : Boolean
      {
         if(!§_-ir§ || §_-lU§.length < 1 || !§_-HX§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-ir§.getChildByName(§_-lU§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-lU§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-lU§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-5x§)
         {
            return §_-z§;
         }
         §_-z§ = new Sprite();
         §_-5x§ = true;
         return §_-z§;
      }
      
      public static function §_-qX§(param1:Number, param2:Number) : void
      {
         if(!§_-5x§ || !§_-ir§ || !§_-ir§.visible)
         {
            return;
         }
         §_-z§.x = param1;
         §_-z§.y = param2;
      }
      
      public static function §_-e2§() : void
      {
         if(§_-ir§)
         {
            if(§_-ir§.visible)
            {
               §_-4q§ = §_-lU§;
            }
            §_-mm§("");
         }
      }
      
      public static function §_-TH§() : void
      {
         if(§_-ir§)
         {
            if(!§_-ir§.visible)
            {
               §_-mm§(§_-4q§);
            }
         }
      }
   }
}
