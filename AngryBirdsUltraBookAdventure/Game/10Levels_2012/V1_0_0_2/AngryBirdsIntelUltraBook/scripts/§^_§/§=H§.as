package §^_§
{
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §=H§ extends Sprite
   {
      
      private static var § !7§:Boolean = false;
      
      private static const §3!M§:String = "Mouse_Cursors";
      
      private static var §9M§:Sprite;
      
      private static var §@!3§:MovieClip;
      
      private static var §[#§:String;
      
      private static var §=!_§:String = "";
      
      private static var §#!>§:Boolean = false;
       
      
      public function §=H§()
      {
         super();
      }
      
      public static function §>@§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§[#§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §[#§ = "";
         §#!>§ = false;
         if(!§ !7§ || !§@!3§)
         {
            if(!§`! §())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §@!3§.numChildren)
         {
            §@!3§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §@!3§.getChildByName(param1) as Sprite))
         {
            §@!3§.visible = false;
            Mouse.show();
            return false;
         }
         §[#§ = param1;
         §@!3§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§[#§ + "_Up"))
         {
            §#!>§ = true;
         }
         if(§#!>§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§[#§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §`! §() : Boolean
      {
         var _loc1_:Class = §%!G§.§^!B§(§3!M§);
         §@!3§ = new _loc1_();
         if(§@!3§)
         {
            §9M§.addChild(§@!3§);
            §9M§.mouseChildren = false;
            §@!3§.mouseEnabled = false;
            §9M§.mouseEnabled = false;
            §@!3§.enabled = false;
            §@!3§.cacheAsBitmap = true;
         }
         return §@!3§ != null;
      }
      
      public static function §4!2§() : Boolean
      {
         return §>h§("_Down");
      }
      
      public static function §function§() : Boolean
      {
         return §>h§("_Up");
      }
      
      private static function §>h§(param1:String) : Boolean
      {
         if(!§@!3§ || §[#§.length < 1 || !§#!>§)
         {
            return false;
         }
         var _loc2_:Sprite = §@!3§.getChildByName(§[#§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§[#§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§[#§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§ !7§)
         {
            return §9M§;
         }
         §9M§ = new Sprite();
         § !7§ = true;
         return §9M§;
      }
      
      public static function §9!x§(param1:Number, param2:Number) : void
      {
         if(!§ !7§ || !§@!3§ || !§@!3§.visible)
         {
            return;
         }
         §9M§.x = param1;
         §9M§.y = param2;
      }
      
      public static function §'!V§() : void
      {
         if(§@!3§)
         {
            if(§@!3§.visible)
            {
               §=!_§ = §[#§;
            }
            §>@§("");
         }
      }
      
      public static function §"u§() : void
      {
         if(§@!3§)
         {
            if(!§@!3§.visible)
            {
               §>@§(§=!_§);
            }
         }
      }
   }
}
