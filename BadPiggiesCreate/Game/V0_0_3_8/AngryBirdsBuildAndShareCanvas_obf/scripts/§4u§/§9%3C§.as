package §4u§
{
   import com.rovio.assets.§%"4§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §9<§ extends Sprite
   {
      
      private static var §#!L§:Boolean = false;
      
      private static const §"!X§:String = "Mouse_Cursors";
      
      private static var §[!_§:Sprite;
      
      private static var §"!A§:MovieClip;
      
      private static var §!r§:String;
      
      private static var §`!s§:String = "";
      
      private static var §8!s§:Boolean = false;
       
      
      public function §9<§()
      {
         super();
      }
      
      public static function §^y§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§!r§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §!r§ = "";
         §8!s§ = false;
         if(!§#!L§ || !§"!A§)
         {
            if(!§'!e§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §"!A§.numChildren)
         {
            §"!A§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §"!A§.getChildByName(param1) as Sprite))
         {
            §"!A§.visible = false;
            Mouse.show();
            return false;
         }
         §!r§ = param1;
         §"!A§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§!r§ + "_Up"))
         {
            §8!s§ = true;
         }
         if(§8!s§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§!r§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §'!e§() : Boolean
      {
         var _loc1_:Class = §%"4§.§>!v§(§"!X§);
         §"!A§ = new _loc1_();
         if(§"!A§)
         {
            §[!_§.addChild(§"!A§);
            §[!_§.mouseChildren = false;
            §"!A§.mouseEnabled = false;
            §[!_§.mouseEnabled = false;
            §"!A§.enabled = false;
            §"!A§.cacheAsBitmap = true;
         }
         return §"!A§ != null;
      }
      
      public static function §0!d§() : Boolean
      {
         return §1!x§("_Down");
      }
      
      public static function §,w§() : Boolean
      {
         return §1!x§("_Up");
      }
      
      private static function §1!x§(param1:String) : Boolean
      {
         if(!§"!A§ || §!r§.length < 1 || !§8!s§)
         {
            return false;
         }
         var _loc2_:Sprite = §"!A§.getChildByName(§!r§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§!r§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§!r§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§#!L§)
         {
            return §[!_§;
         }
         §[!_§ = new Sprite();
         §#!L§ = true;
         return §[!_§;
      }
      
      public static function §3!L§(param1:Number, param2:Number) : void
      {
         if(!§#!L§ || !§"!A§ || !§"!A§.visible)
         {
            return;
         }
         §[!_§.x = param1;
         §[!_§.y = param2;
      }
      
      public static function §#!S§() : void
      {
         if(§"!A§)
         {
            if(§"!A§.visible)
            {
               §`!s§ = §!r§;
            }
            §^y§("");
         }
      }
      
      public static function §,!`§() : void
      {
         if(§"!A§)
         {
            if(!§"!A§.visible)
            {
               §^y§(§`!s§);
            }
         }
      }
   }
}
