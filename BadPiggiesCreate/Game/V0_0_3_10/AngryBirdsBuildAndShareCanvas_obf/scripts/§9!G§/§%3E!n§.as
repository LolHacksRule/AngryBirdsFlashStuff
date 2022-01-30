package §9!G§
{
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §>!n§ extends Sprite
   {
      
      private static var §`_§:Boolean = false;
      
      private static const § !V§:String = "Mouse_Cursors";
      
      private static var §]!f§:Sprite;
      
      private static var §9<§:MovieClip;
      
      private static var §^!#§:String;
      
      private static var §0L§:String = "";
      
      private static var §@!O§:Boolean = false;
       
      
      public function §>!n§()
      {
         super();
      }
      
      public static function §&!$§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§^!#§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §^!#§ = "";
         §@!O§ = false;
         if(!§`_§ || !§9<§)
         {
            if(!§1!-§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §9<§.numChildren)
         {
            §9<§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §9<§.getChildByName(param1) as Sprite))
         {
            §9<§.visible = false;
            Mouse.show();
            return false;
         }
         §^!#§ = param1;
         §9<§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§^!#§ + "_Up"))
         {
            §@!O§ = true;
         }
         if(§@!O§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§^!#§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §1!-§() : Boolean
      {
         var _loc1_:Class = §5!+§.§,]§(§ !V§);
         §9<§ = new _loc1_();
         if(§9<§)
         {
            §]!f§.addChild(§9<§);
            §]!f§.mouseChildren = false;
            §9<§.mouseEnabled = false;
            §]!f§.mouseEnabled = false;
            §9<§.enabled = false;
            §9<§.cacheAsBitmap = true;
         }
         return §9<§ != null;
      }
      
      public static function § V§() : Boolean
      {
         return §'!<§("_Down");
      }
      
      public static function §`!H§() : Boolean
      {
         return §'!<§("_Up");
      }
      
      private static function §'!<§(param1:String) : Boolean
      {
         if(!§9<§ || §^!#§.length < 1 || !§@!O§)
         {
            return false;
         }
         var _loc2_:Sprite = §9<§.getChildByName(§^!#§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§^!#§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§^!#§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§`_§)
         {
            return §]!f§;
         }
         §]!f§ = new Sprite();
         §`_§ = true;
         return §]!f§;
      }
      
      public static function §1!b§(param1:Number, param2:Number) : void
      {
         if(!§`_§ || !§9<§ || !§9<§.visible)
         {
            return;
         }
         §]!f§.x = param1;
         §]!f§.y = param2;
      }
      
      public static function §^7§() : void
      {
         if(§9<§)
         {
            if(§9<§.visible)
            {
               §0L§ = §^!#§;
            }
            §&!$§("");
         }
      }
      
      public static function §@!d§() : void
      {
         if(§9<§)
         {
            if(!§9<§.visible)
            {
               §&!$§(§0L§);
            }
         }
      }
   }
}
