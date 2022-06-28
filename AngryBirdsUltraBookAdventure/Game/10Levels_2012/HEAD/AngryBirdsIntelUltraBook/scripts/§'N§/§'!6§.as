package §'N§
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §'!6§ extends Sprite
   {
      
      private static var §5!"§:Boolean = false;
      
      private static const §>!d§:String = "Mouse_Cursors";
      
      private static var §0f§:Sprite;
      
      private static var §>!J§:MovieClip;
      
      private static var §=!j§:String;
      
      private static var §25§:String = "";
      
      private static var §]B§:Boolean = false;
       
      
      public function §'!6§()
      {
         super();
      }
      
      public static function §!7§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§=!j§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §=!j§ = "";
         §]B§ = false;
         if(!§5!"§ || !§>!J§)
         {
            if(!§2!K§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §>!J§.numChildren)
         {
            §>!J§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc4_ = §>!J§.getChildByName(param1) as Sprite;
         if(!_loc4_)
         {
            §>!J§.visible = false;
            Mouse.show();
            return false;
         }
         §=!j§ = param1;
         §>!J§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§=!j§ + "_Up"))
         {
            §]B§ = true;
         }
         if(§]B§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§=!j§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §2!K§() : Boolean
      {
         var _loc1_:Class = AssetCache.§,!k§(§>!d§);
         §>!J§ = new _loc1_();
         if(§>!J§)
         {
            §0f§.addChild(§>!J§);
            §0f§.mouseChildren = false;
            §>!J§.mouseEnabled = false;
            §0f§.mouseEnabled = false;
            §>!J§.enabled = false;
            §>!J§.cacheAsBitmap = true;
         }
         return §>!J§ != null;
      }
      
      public static function §=!J§() : Boolean
      {
         return §==§("_Down");
      }
      
      public static function §^!]§() : Boolean
      {
         return §==§("_Up");
      }
      
      private static function §==§(param1:String) : Boolean
      {
         if(!§>!J§ || §=!j§.length < 1 || !§]B§)
         {
            return false;
         }
         var _loc2_:Sprite = §>!J§.getChildByName(§=!j§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§=!j§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§=!j§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§5!"§)
         {
            return §0f§;
         }
         §0f§ = new Sprite();
         §5!"§ = true;
         return §0f§;
      }
      
      public static function §#!U§(param1:Number, param2:Number) : void
      {
         if(!§5!"§ || !§>!J§ || !§>!J§.visible)
         {
            return;
         }
         §0f§.x = param1;
         §0f§.y = param2;
      }
      
      public static function §8!F§() : void
      {
         if(§>!J§)
         {
            if(§>!J§.visible)
            {
               §25§ = §=!j§;
            }
            §!7§("");
         }
      }
      
      public static function §^[§() : void
      {
         if(§>!J§)
         {
            if(!§>!J§.visible)
            {
               §!7§(§25§);
            }
         }
      }
   }
}
