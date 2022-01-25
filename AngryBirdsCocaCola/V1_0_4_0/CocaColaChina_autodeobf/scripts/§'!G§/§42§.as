package §'!G§
{
   import §="§.§@5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §42§ extends Sprite
   {
      
      private static var §0v§:Boolean = false;
      
      private static const §1H§:String = "Mouse_Cursors";
      
      private static var §5I§:Sprite;
      
      private static var §^z§:MovieClip;
      
      private static var §;s§:String;
      
      private static var §!!0§:String = "";
      
      private static var §^`§:Boolean = false;
       
      
      public function §42§()
      {
         super();
      }
      
      public static function §0!S§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§;s§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §;s§ = "";
         §^`§ = false;
         if(!§0v§ || !§^z§)
         {
            if(!§9N§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §^z§.numChildren)
         {
            §^z§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §^z§.getChildByName(param1) as Sprite))
         {
            §^z§.visible = false;
            Mouse.show();
            return false;
         }
         §;s§ = param1;
         §^z§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§;s§ + "_Up"))
         {
            §^`§ = true;
         }
         if(§^`§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§;s§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §9N§() : Boolean
      {
         var _loc1_:Class = §@5§.§>! §(§1H§);
         §^z§ = new _loc1_();
         if(§^z§)
         {
            §5I§.addChild(§^z§);
            §5I§.mouseChildren = false;
            §^z§.mouseEnabled = false;
            §5I§.mouseEnabled = false;
            §^z§.enabled = false;
            §^z§.cacheAsBitmap = true;
         }
         return §^z§ != null;
      }
      
      public static function §>!I§() : Boolean
      {
         return §2!^§("_Down");
      }
      
      public static function §^!M§() : Boolean
      {
         return §2!^§("_Up");
      }
      
      private static function §2!^§(param1:String) : Boolean
      {
         if(!§^z§ || §;s§.length < 1 || !§^`§)
         {
            return false;
         }
         var _loc2_:Sprite = §^z§.getChildByName(§;s§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§;s§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§;s§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§0v§)
         {
            return §5I§;
         }
         §5I§ = new Sprite();
         §0v§ = true;
         return §5I§;
      }
      
      public static function §^k§(param1:Number, param2:Number) : void
      {
         if(!§0v§ || !§^z§ || !§^z§.visible)
         {
            return;
         }
         §5I§.x = param1;
         §5I§.y = param2;
      }
      
      public static function §5V§() : void
      {
         if(§^z§)
         {
            if(§^z§.visible)
            {
               §!!0§ = §;s§;
            }
            §0!S§("");
         }
      }
      
      public static function §5!O§() : void
      {
         if(§^z§)
         {
            if(!§^z§.visible)
            {
               §0!S§(§!!0§);
            }
         }
      }
   }
}
