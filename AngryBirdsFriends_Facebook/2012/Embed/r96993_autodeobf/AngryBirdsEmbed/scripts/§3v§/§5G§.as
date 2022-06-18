package §3v§
{
   import com.rovio.assets.§''§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §5G§ extends Sprite
   {
      
      private static var §7d§:Boolean = false;
      
      private static const §+!6§:String = "Mouse_Cursors";
      
      private static var §-B§:Sprite;
      
      private static var §'!G§:MovieClip;
      
      private static var §%v§:String;
      
      private static var §>G§:String = "";
      
      private static var §^Q§:Boolean = false;
       
      
      public function §5G§()
      {
         super();
      }
      
      public static function §5&§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§%v§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §%v§ = "";
         §^Q§ = false;
         if(!§7d§ || !§'!G§)
         {
            if(!§]Z§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §'!G§.numChildren)
         {
            §'!G§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §'!G§.getChildByName(param1) as Sprite))
         {
            §'!G§.visible = false;
            Mouse.show();
            return false;
         }
         §%v§ = param1;
         §'!G§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§%v§ + "_Up"))
         {
            §^Q§ = true;
         }
         if(§^Q§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§%v§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §]Z§() : Boolean
      {
         var _loc1_:Class = §''§.§-C§(§+!6§);
         §'!G§ = new _loc1_();
         if(§'!G§)
         {
            §-B§.addChild(§'!G§);
            §-B§.mouseChildren = false;
            §'!G§.mouseEnabled = false;
            §-B§.mouseEnabled = false;
            §'!G§.enabled = false;
            §'!G§.cacheAsBitmap = true;
         }
         return §'!G§ != null;
      }
      
      public static function § u§() : Boolean
      {
         return §#!A§("_Down");
      }
      
      public static function §'_§() : Boolean
      {
         return §#!A§("_Up");
      }
      
      private static function §#!A§(param1:String) : Boolean
      {
         if(!§'!G§ || §%v§.length < 1 || !§^Q§)
         {
            return false;
         }
         var _loc2_:Sprite = §'!G§.getChildByName(§%v§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§%v§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§%v§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§7d§)
         {
            return §-B§;
         }
         §-B§ = new Sprite();
         §7d§ = true;
         return §-B§;
      }
      
      public static function §"P§(param1:Number, param2:Number) : void
      {
         if(!§7d§ || !§'!G§ || !§'!G§.visible)
         {
            return;
         }
         §-B§.x = param1;
         §-B§.y = param2;
      }
      
      public static function §"q§() : void
      {
         if(§'!G§)
         {
            if(§'!G§.visible)
            {
               §>G§ = §%v§;
            }
            §5&§("");
         }
      }
      
      public static function §,%§() : void
      {
         if(§'!G§)
         {
            if(!§'!G§.visible)
            {
               §5&§(§>G§);
            }
         }
      }
   }
}
