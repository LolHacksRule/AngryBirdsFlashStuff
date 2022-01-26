package §_-aA§
{
   import §_-Eq§.§_-q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-HE§ extends Sprite
   {
      
      private static var §_-pO§:Boolean = false;
      
      private static const §_-Nl§:String = "Mouse_Cursors";
      
      private static var §_-QL§:Sprite;
      
      private static var §_-Qu§:MovieClip;
      
      private static var §_-EE§:String;
      
      private static var §_-ow§:String = "";
      
      private static var §_-HR§:Boolean = false;
       
      
      public function §_-HE§()
      {
         super();
      }
      
      public static function §_-Se§(param1:String) : Boolean
      {
         if(§_-EE§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-EE§ = "";
         §_-HR§ = false;
         if(!§_-pO§ || !§_-Qu§)
         {
            if(!§_-zD§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-Qu§.numChildren)
         {
            §_-Qu§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-Qu§.getChildByName(param1) as Sprite))
         {
            §_-Qu§.visible = false;
            Mouse.show();
            return false;
         }
         §_-EE§ = param1;
         §_-Qu§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-EE§ + "_Up"))
         {
            §_-HR§ = true;
         }
         if(§_-HR§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-EE§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-zD§() : Boolean
      {
         var _loc1_:Class = §_-q§.§_-Ti§(§_-Nl§);
         §_-Qu§ = new _loc1_();
         if(§_-Qu§)
         {
            §_-QL§.addChild(§_-Qu§);
            §_-QL§.mouseChildren = false;
            §_-Qu§.mouseEnabled = false;
            §_-QL§.mouseEnabled = false;
            §_-Qu§.enabled = false;
            §_-Qu§.cacheAsBitmap = true;
         }
         return §_-Qu§ != null;
      }
      
      public static function §_-Df§() : Boolean
      {
         return §_-85§("_Down");
      }
      
      public static function §_-te§() : Boolean
      {
         return §_-85§("_Up");
      }
      
      private static function §_-85§(param1:String) : Boolean
      {
         if(!§_-Qu§ || §_-EE§.length < 1 || !§_-HR§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-Qu§.getChildByName(§_-EE§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-EE§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-EE§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-pO§)
         {
            return §_-QL§;
         }
         §_-QL§ = new Sprite();
         §_-pO§ = true;
         return §_-QL§;
      }
      
      public static function §_-KF§(param1:Number, param2:Number) : void
      {
         if(!§_-pO§ || !§_-Qu§ || !§_-Qu§.visible)
         {
            return;
         }
         §_-QL§.x = param1;
         §_-QL§.y = param2;
      }
      
      public static function §_-bq§() : void
      {
         if(§_-Qu§)
         {
            if(§_-Qu§.visible)
            {
               §_-ow§ = §_-EE§;
            }
            §_-Se§("");
         }
      }
      
      public static function §_-LR§() : void
      {
         if(§_-Qu§)
         {
            if(!§_-Qu§.visible)
            {
               §_-Se§(§_-ow§);
            }
         }
      }
   }
}
