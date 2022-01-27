package §@V§
{
   import com.rovio.assets.§<x§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §-'§ extends Sprite
   {
      
      private static var §!q§:Boolean = false;
      
      private static const §+9§:String = "Mouse_Cursors";
      
      private static var §+&§:Sprite;
      
      private static var §4X§:MovieClip;
      
      private static var §`!K§:String;
      
      private static var §3!O§:String = "";
      
      private static var §[6§:Boolean = false;
       
      
      public function §-'§()
      {
         super();
      }
      
      public static function §#Y§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§`!K§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §`!K§ = "";
         §[6§ = false;
         if(!§!q§ || !§4X§)
         {
            if(!§"6§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §4X§.numChildren)
         {
            §4X§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §4X§.getChildByName(param1) as Sprite))
         {
            §4X§.visible = false;
            Mouse.show();
            return false;
         }
         §`!K§ = param1;
         §4X§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§`!K§ + "_Up"))
         {
            §[6§ = true;
         }
         if(§[6§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§`!K§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §"6§() : Boolean
      {
         var _loc1_:Class = §<x§.§,! §(§+9§);
         §4X§ = new _loc1_();
         if(§4X§)
         {
            §+&§.addChild(§4X§);
            §+&§.mouseChildren = false;
            §4X§.mouseEnabled = false;
            §+&§.mouseEnabled = false;
            §4X§.enabled = false;
            §4X§.cacheAsBitmap = true;
         }
         return §4X§ != null;
      }
      
      public static function §'j§() : Boolean
      {
         return §+p§("_Down");
      }
      
      public static function §`!&§() : Boolean
      {
         return §+p§("_Up");
      }
      
      private static function §+p§(param1:String) : Boolean
      {
         if(!§4X§ || §`!K§.length < 1 || !§[6§)
         {
            return false;
         }
         var _loc2_:Sprite = §4X§.getChildByName(§`!K§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§`!K§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§`!K§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§!q§)
         {
            return §+&§;
         }
         §+&§ = new Sprite();
         §!q§ = true;
         return §+&§;
      }
      
      public static function §9!P§(param1:Number, param2:Number) : void
      {
         if(!§!q§ || !§4X§ || !§4X§.visible)
         {
            return;
         }
         §+&§.x = param1;
         §+&§.y = param2;
      }
      
      public static function §<!4§() : void
      {
         if(§4X§)
         {
            if(§4X§.visible)
            {
               §3!O§ = §`!K§;
            }
            §#Y§("");
         }
      }
      
      public static function §9i§() : void
      {
         if(§4X§)
         {
            if(!§4X§.visible)
            {
               §#Y§(§3!O§);
            }
         }
      }
   }
}
