package §=!7§
{
   import com.rovio.assets.§^1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §9c§ extends Sprite
   {
      
      private static var §#B§:Boolean = false;
      
      private static const §<!b§:String = "Mouse_Cursors";
      
      private static var §6!r§:Sprite;
      
      private static var §<m§:MovieClip;
      
      private static var §'o§:String;
      
      private static var §9!_§:String = "";
      
      private static var §9!0§:Boolean = false;
       
      
      public function §9c§()
      {
         super();
      }
      
      public static function §]!j§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§'o§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §'o§ = "";
         §9!0§ = false;
         if(!§#B§ || !§<m§)
         {
            if(!§"!I§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §<m§.numChildren)
         {
            §<m§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §<m§.getChildByName(param1) as Sprite))
         {
            §<m§.visible = false;
            Mouse.show();
            return false;
         }
         §'o§ = param1;
         §<m§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§'o§ + "_Up"))
         {
            §9!0§ = true;
         }
         if(§9!0§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§'o§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §"!I§() : Boolean
      {
         var _loc1_:Class = §^1§.§+!I§(§<!b§);
         §<m§ = new _loc1_();
         if(§<m§)
         {
            §6!r§.addChild(§<m§);
            §6!r§.mouseChildren = false;
            §<m§.mouseEnabled = false;
            §6!r§.mouseEnabled = false;
            §<m§.enabled = false;
            §<m§.cacheAsBitmap = true;
         }
         return §<m§ != null;
      }
      
      public static function mouseDown() : Boolean
      {
         return §@!?§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §@!?§("_Up");
      }
      
      private static function §@!?§(param1:String) : Boolean
      {
         if(!§<m§ || §'o§.length < 1 || !§9!0§)
         {
            return false;
         }
         var _loc2_:Sprite = §<m§.getChildByName(§'o§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§'o§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§'o§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§#B§)
         {
            return §6!r§;
         }
         §6!r§ = new Sprite();
         §#B§ = true;
         return §6!r§;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         if(!§#B§ || !§<m§ || !§<m§.visible)
         {
            return;
         }
         §6!r§.x = param1;
         §6!r§.y = param2;
      }
      
      public static function §5Q§() : void
      {
         if(§<m§)
         {
            if(§<m§.visible)
            {
               §9!_§ = §'o§;
            }
            §]!j§("");
         }
      }
      
      public static function §<!$§() : void
      {
         if(§<m§)
         {
            if(!§<m§.visible)
            {
               §]!j§(§9!_§);
            }
         }
      }
   }
}
