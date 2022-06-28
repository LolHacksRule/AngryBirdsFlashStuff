package §1!B§
{
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §7n§ extends Sprite
   {
      
      private static var §5!S§:Boolean = false;
      
      private static const §@#§:String = "Mouse_Cursors";
      
      private static var §&![§:Sprite;
      
      private static var §%5§:MovieClip;
      
      private static var §"l§:String;
      
      private static var §&!E§:String = "";
      
      private static var §2]§:Boolean = false;
       
      
      public function §7n§()
      {
         super();
      }
      
      public static function §!!-§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§"l§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §"l§ = "";
         §2]§ = false;
         if(!§5!S§ || !§%5§)
         {
            if(!§&w§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §%5§.numChildren)
         {
            §%5§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §%5§.getChildByName(param1) as Sprite))
         {
            §%5§.visible = false;
            Mouse.show();
            return false;
         }
         §"l§ = param1;
         §%5§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§"l§ + "_Up"))
         {
            §2]§ = true;
         }
         if(§2]§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§"l§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §&w§() : Boolean
      {
         var _loc1_:Class = §,!j§.§!!N§(§@#§);
         §%5§ = new _loc1_();
         if(§%5§)
         {
            §&![§.addChild(§%5§);
            §&![§.mouseChildren = false;
            §%5§.mouseEnabled = false;
            §&![§.mouseEnabled = false;
            §%5§.enabled = false;
            §%5§.cacheAsBitmap = true;
         }
         return §%5§ != null;
      }
      
      public static function §@1§() : Boolean
      {
         return §+!2§("_Down");
      }
      
      public static function §3F§() : Boolean
      {
         return §+!2§("_Up");
      }
      
      private static function §+!2§(param1:String) : Boolean
      {
         if(!§%5§ || §"l§.length < 1 || !§2]§)
         {
            return false;
         }
         var _loc2_:Sprite = §%5§.getChildByName(§"l§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§"l§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§"l§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§5!S§)
         {
            return §&![§;
         }
         §&![§ = new Sprite();
         §5!S§ = true;
         return §&![§;
      }
      
      public static function §&y§(param1:Number, param2:Number) : void
      {
         if(!§5!S§ || !§%5§ || !§%5§.visible)
         {
            return;
         }
         §&![§.x = param1;
         §&![§.y = param2;
      }
      
      public static function §@!5§() : void
      {
         if(§%5§)
         {
            if(§%5§.visible)
            {
               §&!E§ = §"l§;
            }
            §!!-§("");
         }
      }
      
      public static function §`J§() : void
      {
         if(§%5§)
         {
            if(!§%5§.visible)
            {
               §!!-§(§&!E§);
            }
         }
      }
   }
}
