package §-p§
{
   import com.rovio.assets.§53§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §5<§ extends Sprite
   {
      
      private static var §"f§:Boolean = false;
      
      private static const §#?§:String = "Mouse_Cursors";
      
      private static var §+!8§:Sprite;
      
      private static var §`p§:MovieClip;
      
      private static var §@z§:String;
      
      private static var §&^§:String = "";
      
      private static var §[!§:Boolean = false;
       
      
      public function §5<§()
      {
         super();
      }
      
      public static function §"=§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§@z§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §@z§ = "";
         §[!§ = false;
         if(!§"f§ || !§`p§)
         {
            if(!§"y§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §`p§.numChildren)
         {
            §`p§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §`p§.getChildByName(param1) as Sprite))
         {
            §`p§.visible = false;
            Mouse.show();
            return false;
         }
         §@z§ = param1;
         §`p§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§@z§ + "_Up"))
         {
            §[!§ = true;
         }
         if(§[!§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§@z§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §"y§() : Boolean
      {
         var _loc1_:Class = §53§.§[N§(§#?§);
         §`p§ = new _loc1_();
         if(§`p§)
         {
            §+!8§.addChild(§`p§);
            §+!8§.mouseChildren = false;
            §`p§.mouseEnabled = false;
            §+!8§.mouseEnabled = false;
            §`p§.enabled = false;
            §`p§.cacheAsBitmap = true;
         }
         return §`p§ != null;
      }
      
      public static function §!q§() : Boolean
      {
         return §#,§("_Down");
      }
      
      public static function §"§() : Boolean
      {
         return §#,§("_Up");
      }
      
      private static function §#,§(param1:String) : Boolean
      {
         if(!§`p§ || §@z§.length < 1 || !§[!§)
         {
            return false;
         }
         var _loc2_:Sprite = §`p§.getChildByName(§@z§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§@z§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§@z§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§"f§)
         {
            return §+!8§;
         }
         §+!8§ = new Sprite();
         §"f§ = true;
         return §+!8§;
      }
      
      public static function §7G§(param1:Number, param2:Number) : void
      {
         if(!§"f§ || !§`p§ || !§`p§.visible)
         {
            return;
         }
         §+!8§.x = param1;
         §+!8§.y = param2;
      }
      
      public static function §4p§() : void
      {
         if(§`p§)
         {
            if(§`p§.visible)
            {
               §&^§ = §@z§;
            }
            §"=§("");
         }
      }
      
      public static function §]!$§() : void
      {
         if(§`p§)
         {
            if(!§`p§.visible)
            {
               §"=§(§&^§);
            }
         }
      }
   }
}
