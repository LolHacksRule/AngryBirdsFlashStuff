package §24§
{
   import com.rovio.assets.§=!V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §=!L§ extends Sprite
   {
      
      private static var §?!8§:Boolean = false;
      
      private static const §4Q§:String = "Mouse_Cursors";
      
      private static var §6!2§:Sprite;
      
      private static var §-!Q§:MovieClip;
      
      private static var §8!,§:String;
      
      private static var §-!A§:String = "";
      
      private static var §-d§:Boolean = false;
       
      
      public function §=!L§()
      {
         super();
      }
      
      public static function §`a§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§8!,§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §8!,§ = "";
         §-d§ = false;
         if(!§?!8§ || !§-!Q§)
         {
            if(!§["#§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §-!Q§.numChildren)
         {
            §-!Q§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §-!Q§.getChildByName(param1) as Sprite))
         {
            §-!Q§.visible = false;
            Mouse.show();
            return false;
         }
         §8!,§ = param1;
         §-!Q§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§8!,§ + "_Up"))
         {
            §-d§ = true;
         }
         if(§-d§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§8!,§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §["#§() : Boolean
      {
         var _loc1_:Class = §=!V§.§?!O§(§4Q§);
         §-!Q§ = new _loc1_();
         if(§-!Q§)
         {
            §6!2§.addChild(§-!Q§);
            §6!2§.mouseChildren = false;
            §-!Q§.mouseEnabled = false;
            §6!2§.mouseEnabled = false;
            §-!Q§.enabled = false;
            §-!Q§.cacheAsBitmap = true;
         }
         return §-!Q§ != null;
      }
      
      public static function mouseDown() : Boolean
      {
         return §^!C§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §^!C§("_Up");
      }
      
      private static function §^!C§(param1:String) : Boolean
      {
         if(!§-!Q§ || §8!,§.length < 1 || !§-d§)
         {
            return false;
         }
         var _loc2_:Sprite = §-!Q§.getChildByName(§8!,§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§8!,§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§8!,§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§?!8§)
         {
            return §6!2§;
         }
         §6!2§ = new Sprite();
         §?!8§ = true;
         return §6!2§;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         if(!§?!8§ || !§-!Q§ || !§-!Q§.visible)
         {
            return;
         }
         §6!2§.x = param1;
         §6!2§.y = param2;
      }
      
      public static function §&f§() : void
      {
         if(§-!Q§)
         {
            if(§-!Q§.visible)
            {
               §-!A§ = §8!,§;
            }
            §`a§("");
         }
      }
      
      public static function §@Y§() : void
      {
         if(§-!Q§)
         {
            if(!§-!Q§.visible)
            {
               §`a§(§-!A§);
            }
         }
      }
   }
}
