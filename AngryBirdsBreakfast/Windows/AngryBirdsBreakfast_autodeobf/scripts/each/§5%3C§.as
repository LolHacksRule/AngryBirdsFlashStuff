package each
{
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §5<§ extends Sprite
   {
      
      private static var § !<§:Boolean = false;
      
      private static const §;!&§:String = "Mouse_Cursors";
      
      private static var §4!B§:Sprite;
      
      private static var §"t§:MovieClip;
      
      private static var §-!J§:String;
      
      private static var § A§:String = "";
      
      private static var § get§:Boolean = false;
       
      
      public function §5<§()
      {
         super();
      }
      
      public static function §`J§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§-!J§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §-!J§ = "";
         § get§ = false;
         if(!§ !<§ || !§"t§)
         {
            if(!§'!5§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §"t§.numChildren)
         {
            §"t§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §"t§.getChildByName(param1) as Sprite))
         {
            §"t§.visible = false;
            Mouse.show();
            return false;
         }
         §-!J§ = param1;
         §"t§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§-!J§ + "_Up"))
         {
            § get§ = true;
         }
         if(§ get§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§-!J§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §'!5§() : Boolean
      {
         var _loc1_:Class = §<V§.§"!,§(§;!&§);
         §"t§ = new _loc1_();
         if(§"t§)
         {
            §4!B§.addChild(§"t§);
            §4!B§.mouseChildren = false;
            §"t§.mouseEnabled = false;
            §4!B§.mouseEnabled = false;
            §"t§.enabled = false;
            §"t§.cacheAsBitmap = true;
         }
         return §"t§ != null;
      }
      
      public static function mouseDown() : Boolean
      {
         return §]r§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §]r§("_Up");
      }
      
      private static function §]r§(param1:String) : Boolean
      {
         if(!§"t§ || §-!J§.length < 1 || !§ get§)
         {
            return false;
         }
         var _loc2_:Sprite = §"t§.getChildByName(§-!J§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§-!J§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§-!J§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§ !<§)
         {
            return §4!B§;
         }
         §4!B§ = new Sprite();
         § !<§ = true;
         return §4!B§;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         if(!§ !<§ || !§"t§ || !§"t§.visible)
         {
            return;
         }
         §4!B§.x = param1;
         §4!B§.y = param2;
      }
      
      public static function §`[§() : void
      {
         if(§"t§)
         {
            if(§"t§.visible)
            {
               § A§ = §-!J§;
            }
            §`J§("");
         }
      }
      
      public static function §3!X§() : void
      {
         if(§"t§)
         {
            if(!§"t§.visible)
            {
               §`J§(§ A§);
            }
         }
      }
   }
}
