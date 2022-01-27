package §9"`§
{
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §]s§ extends Sprite
   {
      
      private static var §;U§:Boolean = false;
      
      private static const §?!M§:String = "Mouse_Cursors";
      
      private static var §6"y§:Sprite;
      
      private static var §^A§:MovieClip;
      
      private static var § "2§:String;
      
      private static var §-!I§:String = "";
      
      private static var §%,§:Boolean = false;
       
      
      public function §]s§()
      {
         super();
      }
      
      public static function §"!V§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§ "2§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         § "2§ = "";
         §%,§ = false;
         if(!§;U§ || !§^A§)
         {
            if(!§^o§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §^A§.numChildren)
         {
            §^A§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §^A§.getChildByName(param1) as Sprite))
         {
            §^A§.visible = false;
            Mouse.show();
            return false;
         }
         § "2§ = param1;
         §^A§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§ "2§ + "_Up"))
         {
            §%,§ = true;
         }
         if(§%,§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§ "2§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §^o§() : Boolean
      {
         var _loc1_:Class = §%!Z§.§;",§(§?!M§);
         §^A§ = new _loc1_();
         if(§^A§)
         {
            §6"y§.addChild(§^A§);
            §6"y§.mouseChildren = false;
            §^A§.mouseEnabled = false;
            §6"y§.mouseEnabled = false;
            §^A§.enabled = false;
            §^A§.cacheAsBitmap = true;
         }
         return §^A§ != null;
      }
      
      public static function §9!j§() : Boolean
      {
         return §6"Y§("_Down");
      }
      
      public static function § ! §() : Boolean
      {
         return §6"Y§("_Up");
      }
      
      private static function §6"Y§(param1:String) : Boolean
      {
         if(!§^A§ || § "2§.length < 1 || !§%,§)
         {
            return false;
         }
         var _loc2_:Sprite = §^A§.getChildByName(§ "2§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§ "2§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§ "2§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§;U§)
         {
            return §6"y§;
         }
         §6"y§ = new Sprite();
         §;U§ = true;
         return §6"y§;
      }
      
      public static function §&!r§(param1:Number, param2:Number) : void
      {
         if(!§;U§ || !§^A§ || !§^A§.visible)
         {
            return;
         }
         §6"y§.x = param1;
         §6"y§.y = param2;
      }
      
      public static function §""t§() : void
      {
         if(§^A§)
         {
            if(§^A§.visible)
            {
               §-!I§ = § "2§;
            }
            §"!V§("");
         }
      }
      
      public static function §&"A§() : void
      {
         if(§^A§)
         {
            if(!§^A§.visible)
            {
               §"!V§(§-!I§);
            }
         }
      }
   }
}
