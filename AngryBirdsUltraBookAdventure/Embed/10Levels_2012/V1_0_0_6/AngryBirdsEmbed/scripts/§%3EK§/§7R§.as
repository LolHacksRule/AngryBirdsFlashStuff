package §>K§
{
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §7R§ extends Sprite
   {
      
      private static var §%c§:Boolean = false;
      
      private static const §%q§:String = "Mouse_Cursors";
      
      private static var §'!C§:Sprite;
      
      private static var §4!C§:MovieClip;
      
      private static var §+!1§:String;
      
      private static var §5!3§:String = "";
      
      private static var §&!I§:Boolean = false;
       
      
      public function §7R§()
      {
         super();
      }
      
      public static function §-"§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§+!1§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §+!1§ = "";
         §&!I§ = false;
         if(!§%c§ || !§4!C§)
         {
            if(!§9D§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §4!C§.numChildren)
         {
            §4!C§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §4!C§.getChildByName(param1) as Sprite))
         {
            §4!C§.visible = false;
            Mouse.show();
            return false;
         }
         §+!1§ = param1;
         §4!C§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§+!1§ + "_Up"))
         {
            §&!I§ = true;
         }
         if(§&!I§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§+!1§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §9D§() : Boolean
      {
         var _loc1_:Class = §!Q§.§^!H§(§%q§);
         §4!C§ = new _loc1_();
         if(§4!C§)
         {
            §'!C§.addChild(§4!C§);
            §'!C§.mouseChildren = false;
            §4!C§.mouseEnabled = false;
            §'!C§.mouseEnabled = false;
            §4!C§.enabled = false;
            §4!C§.cacheAsBitmap = true;
         }
         return §4!C§ != null;
      }
      
      public static function §05§() : Boolean
      {
         return §0!D§("_Down");
      }
      
      public static function §8h§() : Boolean
      {
         return §0!D§("_Up");
      }
      
      private static function §0!D§(param1:String) : Boolean
      {
         if(!§4!C§ || §+!1§.length < 1 || !§&!I§)
         {
            return false;
         }
         var _loc2_:Sprite = §4!C§.getChildByName(§+!1§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§+!1§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§+!1§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§%c§)
         {
            return §'!C§;
         }
         §'!C§ = new Sprite();
         §%c§ = true;
         return §'!C§;
      }
      
      public static function §]E§(param1:Number, param2:Number) : void
      {
         if(!§%c§ || !§4!C§ || !§4!C§.visible)
         {
            return;
         }
         §'!C§.x = param1;
         §'!C§.y = param2;
      }
      
      public static function §=y§() : void
      {
         if(§4!C§)
         {
            if(§4!C§.visible)
            {
               §5!3§ = §+!1§;
            }
            §-"§("");
         }
      }
      
      public static function §>y§() : void
      {
         if(§4!C§)
         {
            if(!§4!C§.visible)
            {
               §-"§(§5!3§);
            }
         }
      }
   }
}
