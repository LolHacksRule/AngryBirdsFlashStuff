package §6o§
{
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §="7§ extends Sprite
   {
      
      private static var §8!<§:Boolean = false;
      
      private static const §;!D§:String = "Mouse_Cursors";
      
      private static var §<b§:Sprite;
      
      private static var §-A§:MovieClip;
      
      private static var §!!z§:String;
      
      private static var §-e§:String = "";
      
      private static var §6!;§:Boolean = false;
       
      
      public function §="7§()
      {
         super();
      }
      
      public static function §2!'§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§!!z§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §!!z§ = "";
         §6!;§ = false;
         if(!§8!<§ || !§-A§)
         {
            if(!§0C§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §-A§.numChildren)
         {
            §-A§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §-A§.getChildByName(param1) as Sprite))
         {
            §-A§.visible = false;
            Mouse.show();
            return false;
         }
         §!!z§ = param1;
         §-A§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§!!z§ + "_Up"))
         {
            §6!;§ = true;
         }
         if(§6!;§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§!!z§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §0C§() : Boolean
      {
         var _loc1_:Class = §8B§.§6"C§(§;!D§);
         §-A§ = new _loc1_();
         if(§-A§)
         {
            §<b§.addChild(§-A§);
            §<b§.mouseChildren = false;
            §-A§.mouseEnabled = false;
            §<b§.mouseEnabled = false;
            §-A§.enabled = false;
            §-A§.cacheAsBitmap = true;
         }
         return §-A§ != null;
      }
      
      public static function §<5§() : Boolean
      {
         return §+!A§("_Down");
      }
      
      public static function §[b§() : Boolean
      {
         return §+!A§("_Up");
      }
      
      private static function §+!A§(param1:String) : Boolean
      {
         if(!§-A§ || §!!z§.length < 1 || !§6!;§)
         {
            return false;
         }
         var _loc2_:Sprite = §-A§.getChildByName(§!!z§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§!!z§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§!!z§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§8!<§)
         {
            return §<b§;
         }
         §<b§ = new Sprite();
         §8!<§ = true;
         return §<b§;
      }
      
      public static function §4!O§(param1:Number, param2:Number) : void
      {
         if(!§8!<§ || !§-A§ || !§-A§.visible)
         {
            return;
         }
         §<b§.x = param1;
         §<b§.y = param2;
      }
      
      public static function §+!j§() : void
      {
         if(§-A§)
         {
            if(§-A§.visible)
            {
               §-e§ = §!!z§;
            }
            §2!'§("");
         }
      }
      
      public static function §#"0§() : void
      {
         if(§-A§)
         {
            if(!§-A§.visible)
            {
               §2!'§(§-e§);
            }
         }
      }
   }
}
