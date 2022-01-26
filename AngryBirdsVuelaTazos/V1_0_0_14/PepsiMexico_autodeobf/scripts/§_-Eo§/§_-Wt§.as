package §_-Eo§
{
   import §_-W7§.§_-jT§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §_-Wt§ extends Sprite
   {
      
      private static var §_-TD§:Boolean = false;
      
      private static const §_-oy§:String = "Mouse_Cursors";
      
      private static var §_-ao§:Sprite;
      
      private static var §_-Uh§:MovieClip;
      
      private static var §_-SE§:String;
      
      private static var § in§:String = "";
      
      private static var §_-RU§:Boolean = false;
       
      
      public function §_-Wt§()
      {
         super();
      }
      
      public static function §_-0H§(param1:String) : Boolean
      {
         if(§_-SE§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §_-SE§ = "";
         §_-RU§ = false;
         if(!§_-TD§ || !§_-Uh§)
         {
            if(!§_-g4§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §_-Uh§.numChildren)
         {
            §_-Uh§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §_-Uh§.getChildByName(param1) as Sprite))
         {
            §_-Uh§.visible = false;
            Mouse.show();
            return false;
         }
         §_-SE§ = param1;
         §_-Uh§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§_-SE§ + "_Up"))
         {
            §_-RU§ = true;
         }
         if(§_-RU§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§_-SE§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §_-g4§() : Boolean
      {
         var _loc1_:Class = §_-jT§.§_-kv§(§_-oy§);
         §_-Uh§ = new _loc1_();
         if(§_-Uh§)
         {
            §_-ao§.addChild(§_-Uh§);
            §_-ao§.mouseChildren = false;
            §_-Uh§.mouseEnabled = false;
            §_-ao§.mouseEnabled = false;
            §_-Uh§.enabled = false;
            §_-Uh§.cacheAsBitmap = true;
         }
         return §_-Uh§ != null;
      }
      
      public static function §_-5t§() : Boolean
      {
         return §_-Ed§("_Down");
      }
      
      public static function §_-Wa§() : Boolean
      {
         return §_-Ed§("_Up");
      }
      
      private static function §_-Ed§(param1:String) : Boolean
      {
         if(!§_-Uh§ || §_-SE§.length < 1 || !§_-RU§)
         {
            return false;
         }
         var _loc2_:Sprite = §_-Uh§.getChildByName(§_-SE§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§_-SE§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§_-SE§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§_-TD§)
         {
            return §_-ao§;
         }
         §_-ao§ = new Sprite();
         §_-TD§ = true;
         return §_-ao§;
      }
      
      public static function §_-WG§(param1:Number, param2:Number) : void
      {
         if(!§_-TD§ || !§_-Uh§ || !§_-Uh§.visible)
         {
            return;
         }
         §_-ao§.x = param1;
         §_-ao§.y = param2;
      }
      
      public static function §_-xR§() : void
      {
         if(§_-Uh§)
         {
            if(§_-Uh§.visible)
            {
               § in§ = §_-SE§;
            }
            §_-0H§("");
         }
      }
      
      public static function §_-vF§() : void
      {
         if(§_-Uh§)
         {
            if(!§_-Uh§.visible)
            {
               §_-0H§(§ in§);
            }
         }
      }
   }
}
