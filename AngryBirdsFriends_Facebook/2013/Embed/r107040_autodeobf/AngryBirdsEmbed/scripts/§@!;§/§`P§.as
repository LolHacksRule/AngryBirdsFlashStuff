package §@!;§
{
   import com.rovio.assets.§5R§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §`P§ extends Sprite
   {
      
      private static var §%P§:Boolean = false;
      
      private static const §^T§:String = "Mouse_Cursors";
      
      private static var §?S§:Sprite;
      
      private static var §9!+§:MovieClip;
      
      private static var §=!M§:String;
      
      private static var § v§:String = "";
      
      private static var §?c§:Boolean = false;
       
      
      public function §`P§()
      {
         super();
      }
      
      public static function § '§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§=!M§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §=!M§ = "";
         §?c§ = false;
         if(!§%P§ || !§9!+§)
         {
            if(!§<J§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §9!+§.numChildren)
         {
            §9!+§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §9!+§.getChildByName(param1) as Sprite))
         {
            §9!+§.visible = false;
            Mouse.show();
            return false;
         }
         §=!M§ = param1;
         §9!+§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§=!M§ + "_Up"))
         {
            §?c§ = true;
         }
         if(§?c§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§=!M§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §<J§() : Boolean
      {
         var _loc1_:Class = §5R§.§6+§(§^T§);
         §9!+§ = new _loc1_();
         if(§9!+§)
         {
            §?S§.addChild(§9!+§);
            §?S§.mouseChildren = false;
            §9!+§.mouseEnabled = false;
            §?S§.mouseEnabled = false;
            §9!+§.enabled = false;
            §9!+§.cacheAsBitmap = true;
         }
         return §9!+§ != null;
      }
      
      public static function §[!0§() : Boolean
      {
         return §<!"§("_Down");
      }
      
      public static function §;#§() : Boolean
      {
         return §<!"§("_Up");
      }
      
      private static function §<!"§(param1:String) : Boolean
      {
         if(!§9!+§ || §=!M§.length < 1 || !§?c§)
         {
            return false;
         }
         var _loc2_:Sprite = §9!+§.getChildByName(§=!M§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§=!M§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§=!M§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§%P§)
         {
            return §?S§;
         }
         §?S§ = new Sprite();
         §%P§ = true;
         return §?S§;
      }
      
      public static function §<!-§(param1:Number, param2:Number) : void
      {
         if(!§%P§ || !§9!+§ || !§9!+§.visible)
         {
            return;
         }
         §?S§.x = param1;
         §?S§.y = param2;
      }
      
      public static function §2!;§() : void
      {
         if(§9!+§)
         {
            if(§9!+§.visible)
            {
               § v§ = §=!M§;
            }
            § '§("");
         }
      }
      
      public static function §4=§() : void
      {
         if(§9!+§)
         {
            if(!§9!+§.visible)
            {
               § '§(§ v§);
            }
         }
      }
   }
}
