package §<u§
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §%c§ extends Sprite
   {
      
      private static var §=!W§:Boolean = false;
      
      private static const §[!1§:String = "Mouse_Cursors";
      
      private static var §!l§:Sprite;
      
      private static var §0!U§:MovieClip;
      
      private static var §;p§:String;
      
      private static var § b§:String = "";
      
      private static var §,!6§:Boolean = false;
       
      
      public function §%c§()
      {
         super();
      }
      
      public static function §^@§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§;p§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §;p§ = "";
         §,!6§ = false;
         if(!§=!W§ || !§0!U§)
         {
            if(!§;!b§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §0!U§.numChildren)
         {
            §0!U§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc4_ = §0!U§.getChildByName(param1) as Sprite;
         if(!_loc4_)
         {
            §0!U§.visible = false;
            Mouse.show();
            return false;
         }
         §;p§ = param1;
         §0!U§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§;p§ + "_Up"))
         {
            §,!6§ = true;
         }
         if(§,!6§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§;p§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §;!b§() : Boolean
      {
         var _loc1_:Class = AssetCache.§%p§(§[!1§);
         §0!U§ = new _loc1_();
         if(§0!U§)
         {
            §!l§.addChild(§0!U§);
            §!l§.mouseChildren = false;
            §0!U§.mouseEnabled = false;
            §!l§.mouseEnabled = false;
            §0!U§.enabled = false;
            §0!U§.cacheAsBitmap = true;
         }
         return §0!U§ != null;
      }
      
      public static function §<p§() : Boolean
      {
         return §]V§("_Down");
      }
      
      public static function §'n§() : Boolean
      {
         return §]V§("_Up");
      }
      
      private static function §]V§(param1:String) : Boolean
      {
         if(!§0!U§ || §;p§.length < 1 || !§,!6§)
         {
            return false;
         }
         var _loc2_:Sprite = §0!U§.getChildByName(§;p§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§;p§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§;p§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§=!W§)
         {
            return §!l§;
         }
         §!l§ = new Sprite();
         §=!W§ = true;
         return §!l§;
      }
      
      public static function §'§(param1:Number, param2:Number) : void
      {
         if(!§=!W§ || !§0!U§ || !§0!U§.visible)
         {
            return;
         }
         §!l§.x = param1;
         §!l§.y = param2;
      }
      
      public static function §5! §() : void
      {
         if(§0!U§)
         {
            if(§0!U§.visible)
            {
               § b§ = §;p§;
            }
            §^@§("");
         }
      }
      
      public static function §4]§() : void
      {
         if(§0!U§)
         {
            if(!§0!U§.visible)
            {
               §^@§(§ b§);
            }
         }
      }
   }
}
