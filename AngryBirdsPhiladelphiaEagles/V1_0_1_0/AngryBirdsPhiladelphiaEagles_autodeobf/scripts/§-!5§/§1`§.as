package §-!5§
{
   import com.rovio.assets.§4D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §1`§ extends Sprite
   {
      
      private static var §>e§:Boolean = false;
      
      private static const §7i§:String = "Mouse_Cursors";
      
      private static var §7A§:Sprite;
      
      private static var §&m§:MovieClip;
      
      private static var §"!9§:String;
      
      private static var §`Z§:String = "";
      
      private static var §5L§:Boolean = false;
       
      
      public function §1`§()
      {
         super();
      }
      
      public static function §=!§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§"!9§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §"!9§ = "";
         §5L§ = false;
         if(!§>e§ || !§&m§)
         {
            if(!§4!K§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §&m§.numChildren)
         {
            §&m§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §&m§.getChildByName(param1) as Sprite))
         {
            §&m§.visible = false;
            Mouse.show();
            return false;
         }
         §"!9§ = param1;
         §&m§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§"!9§ + "_Up"))
         {
            §5L§ = true;
         }
         if(§5L§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§"!9§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §4!K§() : Boolean
      {
         var _loc1_:Class = §4D§.§,!O§(§7i§);
         §&m§ = new _loc1_();
         if(§&m§)
         {
            §7A§.addChild(§&m§);
            §7A§.mouseChildren = false;
            §&m§.mouseEnabled = false;
            §7A§.mouseEnabled = false;
            §&m§.enabled = false;
            §&m§.cacheAsBitmap = true;
         }
         return §&m§ != null;
      }
      
      public static function §2s§() : Boolean
      {
         return §@b§("_Down");
      }
      
      public static function §8@§() : Boolean
      {
         return §@b§("_Up");
      }
      
      private static function §@b§(param1:String) : Boolean
      {
         if(!§&m§ || §"!9§.length < 1 || !§5L§)
         {
            return false;
         }
         var _loc2_:Sprite = §&m§.getChildByName(§"!9§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§"!9§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§"!9§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§>e§)
         {
            return §7A§;
         }
         §7A§ = new Sprite();
         §>e§ = true;
         return §7A§;
      }
      
      public static function §8A§(param1:Number, param2:Number) : void
      {
         if(!§>e§ || !§&m§ || !§&m§.visible)
         {
            return;
         }
         §7A§.x = param1;
         §7A§.y = param2;
      }
      
      public static function §[!?§() : void
      {
         if(§&m§)
         {
            if(§&m§.visible)
            {
               §`Z§ = §"!9§;
            }
            §=!§("");
         }
      }
      
      public static function §^!%§() : void
      {
         if(§&m§)
         {
            if(!§&m§.visible)
            {
               §=!§(§`Z§);
            }
         }
      }
   }
}
