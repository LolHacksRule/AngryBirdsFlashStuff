package §_-r6§
{
   import §_-2B§.§_-wA§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-oy§ extends Sprite
   {
      
      private static var §_-011§:Boolean = false;
      
      private static const §_-TC§:String = "Mouse_Cursors";
      
      private static var §_-5V§:Sprite;
      
      private static var §_-Hd§:MovieClip;
      
      private static var §_-uE§:String;
      
      private static var §_-4K§:String = "";
      
      private static var §_-IW§:Boolean = false;
       
      
      public function §_-oy§()
      {
         super();
      }
      
      public static function §_-Rt§(param1:String) : Boolean
      {
         if(§_-uE§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-uE§ = "";
         §_-IW§ = false;
         if(!§_-011§ || !§_-Hd§)
         {
            if(!§_-pS§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-Hd§.numChildren)
         {
            §_-Hd§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-Hd§.getChildByName(param1) as Sprite))
         {
            §_-Hd§.visible = false;
            Mouse.show();
            return false;
         }
         §_-uE§ = param1;
         §_-Hd§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-uE§ + "_Up"))
         {
            §_-IW§ = true;
         }
         if(§_-IW§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-uE§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-pS§() : Boolean
      {
         var _loc1_:Class = §_-wA§.§_-Mh§(§_-TC§);
         §_-Hd§ = new _loc1_();
         if(§_-Hd§)
         {
            §_-5V§.addChild(§_-Hd§);
            §_-5V§.mouseChildren = false;
            §_-Hd§.mouseEnabled = false;
            §_-5V§.mouseEnabled = false;
            §_-Hd§.enabled = false;
            §_-Hd§.cacheAsBitmap = true;
         }
         return §_-Hd§ != null;
      }
      
      public static function §_-6D§() : Boolean
      {
         return §_-rs§("_Down");
      }
      
      public static function §_-4e§() : Boolean
      {
         return §_-rs§("_Up");
      }
      
      private static function §_-rs§(param1:String) : Boolean
      {
         if(!§_-Hd§ || §_-uE§.length < 1 || !§_-IW§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-Hd§.getChildByName(§_-uE§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-uE§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-uE§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-011§)
         {
            return §_-5V§;
         }
         §_-5V§ = new Sprite();
         §_-011§ = true;
         return §_-5V§;
      }
      
      public static function §_-oC§(param1:Number, param2:Number) : void
      {
         if(!§_-011§ || !§_-Hd§ || !§_-Hd§.visible)
         {
            return;
         }
         §_-5V§.x = param1;
         §_-5V§.y = param2;
      }
      
      public static function §_-rR§() : void
      {
         if(§_-Hd§)
         {
            if(§_-Hd§.visible)
            {
               §_-4K§ = §_-uE§;
            }
            §_-Rt§("");
         }
      }
      
      public static function §_-UM§() : void
      {
         if(§_-Hd§)
         {
            if(!§_-Hd§.visible)
            {
               §_-Rt§(§_-4K§);
            }
         }
      }
   }
}
