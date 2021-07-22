package §[x§
{
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §]"!§ extends Sprite
   {
      
      private static var §9!,§:Boolean = false;
      
      private static const §,F§:String = "Mouse_Cursors";
      
      private static var §>!C§:Sprite;
      
      private static var §#"'§:MovieClip;
      
      private static var §3"<§:String;
      
      private static var §!>§:String = "";
      
      private static var §2-§:Boolean = false;
       
      
      public function §]"!§()
      {
         super();
      }
      
      public static function §%"9§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§3"<§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §3"<§ = "";
         §2-§ = false;
         if(!§9!,§ || !§#"'§)
         {
            if(!§6!Z§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §#"'§.numChildren)
         {
            §#"'§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §#"'§.getChildByName(param1) as Sprite))
         {
            §#"'§.visible = false;
            Mouse.show();
            return false;
         }
         §3"<§ = param1;
         §#"'§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§3"<§ + "_Up"))
         {
            §2-§ = true;
         }
         if(§2-§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§3"<§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §6!Z§() : Boolean
      {
         var _loc1_:Class = §>"5§.§6s§(§,F§);
         §#"'§ = new _loc1_();
         if(§#"'§)
         {
            §>!C§.addChild(§#"'§);
            §>!C§.mouseChildren = false;
            §#"'§.mouseEnabled = false;
            §>!C§.mouseEnabled = false;
            §#"'§.enabled = false;
            §#"'§.cacheAsBitmap = true;
         }
         return §#"'§ != null;
      }
      
      public static function §#B§() : Boolean
      {
         return §41§("_Down");
      }
      
      public static function §2!S§() : Boolean
      {
         return §41§("_Up");
      }
      
      private static function §41§(param1:String) : Boolean
      {
         if(!§#"'§ || §3"<§.length < 1 || !§2-§)
         {
            return false;
         }
         var _loc2_:Sprite = §#"'§.getChildByName(§3"<§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§3"<§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§3"<§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§9!,§)
         {
            return §>!C§;
         }
         §>!C§ = new Sprite();
         §9!,§ = true;
         return §>!C§;
      }
      
      public static function §&"1§(param1:Number, param2:Number) : void
      {
         if(!§9!,§ || !§#"'§ || !§#"'§.visible)
         {
            return;
         }
         §>!C§.x = param1;
         §>!C§.y = param2;
      }
      
      public static function §'"C§() : void
      {
         if(§#"'§)
         {
            if(§#"'§.visible)
            {
               §!>§ = §3"<§;
            }
            §%"9§("");
         }
      }
      
      public static function §9_§() : void
      {
         if(§#"'§)
         {
            if(!§#"'§.visible)
            {
               §%"9§(§!>§);
            }
         }
      }
   }
}
