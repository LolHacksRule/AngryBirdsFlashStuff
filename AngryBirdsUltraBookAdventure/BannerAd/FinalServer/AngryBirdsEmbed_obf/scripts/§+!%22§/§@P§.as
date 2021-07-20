package §+!"§
{
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §@P§ extends Sprite
   {
      
      private static var §<z§:Boolean = false;
      
      private static const §`m§:String = "Mouse_Cursors";
      
      private static var §?H§:Sprite;
      
      private static var §3x§:MovieClip;
      
      private static var §#g§:String;
      
      private static var §'!=§:String = "";
      
      private static var §,!3§:Boolean = false;
       
      
      public function §@P§()
      {
         super();
      }
      
      public static function §,l§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§#g§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §#g§ = "";
         §,!3§ = false;
         if(!§<z§ || !§3x§)
         {
            if(!§&h§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §3x§.numChildren)
         {
            §3x§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §3x§.getChildByName(param1) as Sprite))
         {
            §3x§.visible = false;
            Mouse.show();
            return false;
         }
         §#g§ = param1;
         §3x§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§#g§ + "_Up"))
         {
            §,!3§ = true;
         }
         if(§,!3§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§#g§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §&h§() : Boolean
      {
         var _loc1_:Class = §'!H§.§&!G§(§`m§);
         §3x§ = new _loc1_();
         if(§3x§)
         {
            §?H§.addChild(§3x§);
            §?H§.mouseChildren = false;
            §3x§.mouseEnabled = false;
            §?H§.mouseEnabled = false;
            §3x§.enabled = false;
            §3x§.cacheAsBitmap = true;
         }
         return §3x§ != null;
      }
      
      public static function §@1§() : Boolean
      {
         return §4!@§("_Down");
      }
      
      public static function §-§() : Boolean
      {
         return §4!@§("_Up");
      }
      
      private static function §4!@§(param1:String) : Boolean
      {
         if(!§3x§ || §#g§.length < 1 || !§,!3§)
         {
            return false;
         }
         var _loc2_:Sprite = §3x§.getChildByName(§#g§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§#g§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§#g§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§<z§)
         {
            return §?H§;
         }
         §?H§ = new Sprite();
         §<z§ = true;
         return §?H§;
      }
      
      public static function §`H§(param1:Number, param2:Number) : void
      {
         if(!§<z§ || !§3x§ || !§3x§.visible)
         {
            return;
         }
         §?H§.x = param1;
         §?H§.y = param2;
      }
      
      public static function §62§() : void
      {
         if(§3x§)
         {
            if(§3x§.visible)
            {
               §'!=§ = §#g§;
            }
            §,l§("");
         }
      }
      
      public static function §]T§() : void
      {
         if(§3x§)
         {
            if(!§3x§.visible)
            {
               §,l§(§'!=§);
            }
         }
      }
   }
}
