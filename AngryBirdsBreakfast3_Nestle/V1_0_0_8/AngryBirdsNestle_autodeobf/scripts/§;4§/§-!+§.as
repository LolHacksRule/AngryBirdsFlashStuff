package §;4§
{
   import com.rovio.assets.§2"&§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §-!+§ extends Sprite
   {
      
      private static var §+!2§:Boolean = false;
      
      private static const §>[§:String = "Mouse_Cursors";
      
      private static var §0!c§:Sprite;
      
      private static var §0!B§:MovieClip;
      
      private static var §!!t§:String;
      
      private static var §4s§:String = "";
      
      private static var §9!l§:Boolean = false;
       
      
      public function §-!+§()
      {
         super();
      }
      
      public static function §+!L§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§!!t§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §!!t§ = "";
         §9!l§ = false;
         if(!§+!2§ || !§0!B§)
         {
            if(!§3s§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §0!B§.numChildren)
         {
            §0!B§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §0!B§.getChildByName(param1) as Sprite))
         {
            §0!B§.visible = false;
            Mouse.show();
            return false;
         }
         §!!t§ = param1;
         §0!B§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§!!t§ + "_Up"))
         {
            §9!l§ = true;
         }
         if(§9!l§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§!!t§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §3s§() : Boolean
      {
         var _loc1_:Class = §2"&§.§<$§(§>[§);
         §0!B§ = new _loc1_();
         if(§0!B§)
         {
            §0!c§.addChild(§0!B§);
            §0!c§.mouseChildren = false;
            §0!B§.mouseEnabled = false;
            §0!c§.mouseEnabled = false;
            §0!B§.enabled = false;
            §0!B§.cacheAsBitmap = true;
         }
         return §0!B§ != null;
      }
      
      public static function mouseDown() : Boolean
      {
         return §+!6§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §+!6§("_Up");
      }
      
      private static function §+!6§(param1:String) : Boolean
      {
         if(!§0!B§ || §!!t§.length < 1 || !§9!l§)
         {
            return false;
         }
         var _loc2_:Sprite = §0!B§.getChildByName(§!!t§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§!!t§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§!!t§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§+!2§)
         {
            return §0!c§;
         }
         §0!c§ = new Sprite();
         §+!2§ = true;
         return §0!c§;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         if(!§+!2§ || !§0!B§ || !§0!B§.visible)
         {
            return;
         }
         §0!c§.x = param1;
         §0!c§.y = param2;
      }
      
      public static function §<!M§() : void
      {
         if(§0!B§)
         {
            if(§0!B§.visible)
            {
               §4s§ = §!!t§;
            }
            §+!L§("");
         }
      }
      
      public static function §8!#§() : void
      {
         if(§0!B§)
         {
            if(!§0!B§.visible)
            {
               §+!L§(§4s§);
            }
         }
      }
   }
}
