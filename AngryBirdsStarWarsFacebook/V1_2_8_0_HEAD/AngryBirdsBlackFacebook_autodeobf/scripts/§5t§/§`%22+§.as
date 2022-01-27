package §5t§
{
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §`"+§ extends Sprite
   {
      
      private static var §!b§:Boolean = false;
      
      private static const §6"V§:String = "Mouse_Cursors";
      
      private static var §'r§:Sprite;
      
      private static var §##T§:MovieClip;
      
      private static var §0z§:String;
      
      private static var §+!M§:String = "";
      
      private static var §##<§:Boolean = false;
       
      
      public function §`"+§()
      {
         super();
      }
      
      public static function §-G§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§0z§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §0z§ = "";
         §##<§ = false;
         if(!§!b§ || !§##T§)
         {
            if(!§5]§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §##T§.numChildren)
         {
            §##T§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §##T§.getChildByName(param1) as Sprite))
         {
            §##T§.visible = false;
            Mouse.show();
            return false;
         }
         §0z§ = param1;
         §##T§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§0z§ + "_Up"))
         {
            §##<§ = true;
         }
         if(§##<§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§0z§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §5]§() : Boolean
      {
         var _loc1_:Class = §5_§.§`"G§(§6"V§);
         §##T§ = new _loc1_();
         if(§##T§)
         {
            §'r§.addChild(§##T§);
            §'r§.mouseChildren = false;
            §##T§.mouseEnabled = false;
            §'r§.mouseEnabled = false;
            §##T§.enabled = false;
            §##T§.cacheAsBitmap = true;
         }
         return §##T§ != null;
      }
      
      public static function §^U§() : Boolean
      {
         return §]§("_Down");
      }
      
      public static function §<"o§() : Boolean
      {
         return §]§("_Up");
      }
      
      private static function §]§(param1:String) : Boolean
      {
         if(!§##T§ || §0z§.length < 1 || !§##<§)
         {
            return false;
         }
         var _loc2_:Sprite = §##T§.getChildByName(§0z§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§0z§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§0z§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§!b§)
         {
            return §'r§;
         }
         §'r§ = new Sprite();
         §!b§ = true;
         return §'r§;
      }
      
      public static function §1"L§(param1:Number, param2:Number) : void
      {
         if(!§!b§ || !§##T§ || !§##T§.visible)
         {
            return;
         }
         §'r§.x = param1;
         §'r§.y = param2;
      }
      
      public static function §+#`§() : void
      {
         if(§##T§)
         {
            if(§##T§.visible)
            {
               §+!M§ = §0z§;
            }
            §-G§("");
         }
      }
      
      public static function §9!q§() : void
      {
         if(§##T§)
         {
            if(!§##T§.visible)
            {
               §-G§(§+!M§);
            }
         }
      }
   }
}
