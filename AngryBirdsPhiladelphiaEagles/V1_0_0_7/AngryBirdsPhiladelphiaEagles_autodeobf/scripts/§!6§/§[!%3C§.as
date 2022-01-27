package §!6§
{
   import com.rovio.assets.§@h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §[!<§ extends Sprite
   {
      
      private static var §3m§:Boolean = false;
      
      private static const §#2§:String = "Mouse_Cursors";
      
      private static var §0!C§:Sprite;
      
      private static var §`&§:MovieClip;
      
      private static var §5!2§:String;
      
      private static var §'g§:String = "";
      
      private static var §9&§:Boolean = false;
       
      
      public function §[!<§()
      {
         super();
      }
      
      public static function §,[§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§5!2§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §5!2§ = "";
         §9&§ = false;
         if(!§3m§ || !§`&§)
         {
            if(!§`]§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §`&§.numChildren)
         {
            §`&§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §`&§.getChildByName(param1) as Sprite))
         {
            §`&§.visible = false;
            Mouse.show();
            return false;
         }
         §5!2§ = param1;
         §`&§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§5!2§ + "_Up"))
         {
            §9&§ = true;
         }
         if(§9&§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§5!2§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §`]§() : Boolean
      {
         var _loc1_:Class = §@h§.§[@§(§#2§);
         §`&§ = new _loc1_();
         if(§`&§)
         {
            §0!C§.addChild(§`&§);
            §0!C§.mouseChildren = false;
            §`&§.mouseEnabled = false;
            §0!C§.mouseEnabled = false;
            §`&§.enabled = false;
            §`&§.cacheAsBitmap = true;
         }
         return §`&§ != null;
      }
      
      public static function §@!>§() : Boolean
      {
         return §;!8§("_Down");
      }
      
      public static function §%V§() : Boolean
      {
         return §;!8§("_Up");
      }
      
      private static function §;!8§(param1:String) : Boolean
      {
         if(!§`&§ || §5!2§.length < 1 || !§9&§)
         {
            return false;
         }
         var _loc2_:Sprite = §`&§.getChildByName(§5!2§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§5!2§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§5!2§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§3m§)
         {
            return §0!C§;
         }
         §0!C§ = new Sprite();
         §3m§ = true;
         return §0!C§;
      }
      
      public static function §0u§(param1:Number, param2:Number) : void
      {
         if(!§3m§ || !§`&§ || !§`&§.visible)
         {
            return;
         }
         §0!C§.x = param1;
         §0!C§.y = param2;
      }
      
      public static function §<S§() : void
      {
         if(§`&§)
         {
            if(§`&§.visible)
            {
               §'g§ = §5!2§;
            }
            §,[§("");
         }
      }
      
      public static function §"j§() : void
      {
         if(§`&§)
         {
            if(!§`&§.visible)
            {
               §,[§(§'g§);
            }
         }
      }
   }
}
