package §_-gM§
{
   import §_-9k§.§_-X7§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-oq§ extends Sprite
   {
      
      private static var §_-4e§:Boolean = false;
      
      private static const §_-CB§:String = "Mouse_Cursors";
      
      private static var §_-bR§:Sprite;
      
      private static var §_-po§:MovieClip;
      
      private static var §_-Vg§:String;
      
      private static var §_-DR§:String = "";
      
      private static var §_-Tl§:Boolean = false;
       
      
      public function §_-oq§()
      {
         super();
      }
      
      public static function §_-4s§(param1:String) : Boolean
      {
         if(§_-Vg§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-Vg§ = "";
         §_-Tl§ = false;
         if(!§_-4e§ || !§_-po§)
         {
            if(!§_-1O§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-po§.numChildren)
         {
            §_-po§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-po§.getChildByName(param1) as Sprite))
         {
            §_-po§.visible = false;
            Mouse.show();
            return false;
         }
         §_-Vg§ = param1;
         §_-po§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-Vg§ + "_Up"))
         {
            §_-Tl§ = true;
         }
         if(§_-Tl§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-Vg§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-1O§() : Boolean
      {
         var _loc1_:Class = §_-X7§.§_-IA§(§_-CB§);
         §_-po§ = new _loc1_();
         if(§_-po§)
         {
            §_-bR§.addChild(§_-po§);
            §_-bR§.mouseChildren = false;
            §_-po§.mouseEnabled = false;
            §_-bR§.mouseEnabled = false;
            §_-po§.enabled = false;
            §_-po§.cacheAsBitmap = true;
         }
         return §_-po§ != null;
      }
      
      public static function §_-E-§() : Boolean
      {
         return §_-Vl§("_Down");
      }
      
      public static function §_-4m§() : Boolean
      {
         return §_-Vl§("_Up");
      }
      
      private static function §_-Vl§(param1:String) : Boolean
      {
         if(!§_-po§ || §_-Vg§.length < 1 || !§_-Tl§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-po§.getChildByName(§_-Vg§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-Vg§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-Vg§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-4e§)
         {
            return §_-bR§;
         }
         §_-bR§ = new Sprite();
         §_-4e§ = true;
         return §_-bR§;
      }
      
      public static function §_-Qv§(param1:Number, param2:Number) : void
      {
         if(!§_-4e§ || !§_-po§ || !§_-po§.visible)
         {
            return;
         }
         §_-bR§.x = param1;
         §_-bR§.y = param2;
      }
      
      public static function §_-Z0§() : void
      {
         if(§_-po§)
         {
            if(§_-po§.visible)
            {
               §_-DR§ = §_-Vg§;
            }
            §_-4s§("");
         }
      }
      
      public static function §_-Ln§() : void
      {
         if(§_-po§)
         {
            if(!§_-po§.visible)
            {
               §_-4s§(§_-DR§);
            }
         }
      }
   }
}
