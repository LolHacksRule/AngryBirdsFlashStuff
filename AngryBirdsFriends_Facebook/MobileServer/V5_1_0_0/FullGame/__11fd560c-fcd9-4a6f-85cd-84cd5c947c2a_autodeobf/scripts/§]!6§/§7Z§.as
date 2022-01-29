package §]!6§
{
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §7Z§ extends Sprite
   {
      
      private static var §""I§:Boolean = false;
      
      private static const §;"D§:String = "Mouse_Cursors";
      
      private static var §`!?§:Sprite;
      
      private static var §%!X§:MovieClip;
      
      private static var §@!=§:String;
      
      private static var §3!x§:String = "";
      
      private static var §["r§:Boolean = false;
       
      
      public function §7Z§()
      {
         super();
      }
      
      public static function §42§(param1:String) : Boolean
      {
         if(§@!=§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §@!=§ = "";
         §["r§ = false;
         if(!§""I§ || !§%!X§)
         {
            if(!§"#u§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §%!X§.numChildren)
         {
            §%!X§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §%!X§.getChildByName(param1) as Sprite))
         {
            §%!X§.visible = false;
            Mouse.show();
            return false;
         }
         §@!=§ = param1;
         §%!X§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§@!=§ + "_Up"))
         {
            §["r§ = true;
         }
         if(§["r§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§@!=§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §"#u§() : Boolean
      {
         var _loc1_:Class = §!"f§.§##?§(§;"D§);
         §%!X§ = new _loc1_();
         if(§%!X§)
         {
            §`!?§.addChild(§%!X§);
            §`!?§.mouseChildren = false;
            §%!X§.mouseEnabled = false;
            §`!?§.mouseEnabled = false;
            §%!X§.enabled = false;
            §%!X§.cacheAsBitmap = true;
         }
         return §%!X§ != null;
      }
      
      public static function §2# §() : Boolean
      {
         return §[$9§("_Down");
      }
      
      public static function §[!_§() : Boolean
      {
         return §[$9§("_Up");
      }
      
      private static function §[$9§(param1:String) : Boolean
      {
         if(!§%!X§ || §@!=§.length < 1 || !§["r§)
         {
            return false;
         }
         var _loc2_:Sprite = §%!X§.getChildByName(§@!=§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§@!=§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§@!=§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§""I§)
         {
            return §`!?§;
         }
         §`!?§ = new Sprite();
         §""I§ = true;
         return §`!?§;
      }
      
      public static function §]-§(param1:Number, param2:Number) : void
      {
         if(!§""I§ || !§%!X§ || !§%!X§.visible)
         {
            return;
         }
         §`!?§.x = param1;
         §`!?§.y = param2;
      }
      
      public static function § #m§() : void
      {
         if(§%!X§)
         {
            if(§%!X§.visible)
            {
               §3!x§ = §@!=§;
            }
            §42§("");
         }
      }
      
      public static function §8!`§() : void
      {
         if(§%!X§)
         {
            if(!§%!X§.visible)
            {
               §42§(§3!x§);
            }
         }
      }
   }
}
