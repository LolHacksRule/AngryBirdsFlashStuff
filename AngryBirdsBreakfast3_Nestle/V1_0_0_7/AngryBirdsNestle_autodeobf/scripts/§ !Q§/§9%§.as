package § !Q§
{
   import com.rovio.assets.§[O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §9%§ extends Sprite
   {
      
      private static var §4!P§:Boolean = false;
      
      private static const §1!<§:String = "Mouse_Cursors";
      
      private static var §,!V§:Sprite;
      
      private static var §&j§:MovieClip;
      
      private static var §<H§:String;
      
      private static var §^"'§:String = "";
      
      private static var §81§:Boolean = false;
       
      
      public function §9%§()
      {
         super();
      }
      
      public static function §,!p§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§<H§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §<H§ = "";
         §81§ = false;
         if(!§4!P§ || !§&j§)
         {
            if(!§<!9§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §&j§.numChildren)
         {
            §&j§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §&j§.getChildByName(param1) as Sprite))
         {
            §&j§.visible = false;
            Mouse.show();
            return false;
         }
         §<H§ = param1;
         §&j§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§<H§ + "_Up"))
         {
            §81§ = true;
         }
         if(§81§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§<H§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §<!9§() : Boolean
      {
         var _loc1_:Class = §[O§.§1s§(§1!<§);
         §&j§ = new _loc1_();
         if(§&j§)
         {
            §,!V§.addChild(§&j§);
            §,!V§.mouseChildren = false;
            §&j§.mouseEnabled = false;
            §,!V§.mouseEnabled = false;
            §&j§.enabled = false;
            §&j§.cacheAsBitmap = true;
         }
         return §&j§ != null;
      }
      
      public static function mouseDown() : Boolean
      {
         return §2!N§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §2!N§("_Up");
      }
      
      private static function §2!N§(param1:String) : Boolean
      {
         if(!§&j§ || §<H§.length < 1 || !§81§)
         {
            return false;
         }
         var _loc2_:Sprite = §&j§.getChildByName(§<H§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§<H§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§<H§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§4!P§)
         {
            return §,!V§;
         }
         §,!V§ = new Sprite();
         §4!P§ = true;
         return §,!V§;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         if(!§4!P§ || !§&j§ || !§&j§.visible)
         {
            return;
         }
         §,!V§.x = param1;
         §,!V§.y = param2;
      }
      
      public static function § X§() : void
      {
         if(§&j§)
         {
            if(§&j§.visible)
            {
               §^"'§ = §<H§;
            }
            §,!p§("");
         }
      }
      
      public static function §2!9§() : void
      {
         if(§&j§)
         {
            if(!§&j§.visible)
            {
               §,!p§(§^"'§);
            }
         }
      }
   }
}
