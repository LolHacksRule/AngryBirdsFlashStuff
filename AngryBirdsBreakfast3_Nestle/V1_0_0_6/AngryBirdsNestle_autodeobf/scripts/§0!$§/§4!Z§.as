package §0!$§
{
   import com.rovio.assets.§<U§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §4!Z§ extends Sprite
   {
      
      private static var §3!9§:Boolean = false;
      
      private static const §7"1§:String = "Mouse_Cursors";
      
      private static var § var§:Sprite;
      
      private static var §?v§:MovieClip;
      
      private static var §86§:String;
      
      private static var §>!S§:String = "";
      
      private static var §>!`§:Boolean = false;
       
      
      public function §4!Z§()
      {
         super();
      }
      
      public static function §0!t§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§86§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §86§ = "";
         §>!`§ = false;
         if(!§3!9§ || !§?v§)
         {
            if(!§1"!§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §?v§.numChildren)
         {
            §?v§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §?v§.getChildByName(param1) as Sprite))
         {
            §?v§.visible = false;
            Mouse.show();
            return false;
         }
         §86§ = param1;
         §?v§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§86§ + "_Up"))
         {
            §>!`§ = true;
         }
         if(§>!`§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§86§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §1"!§() : Boolean
      {
         var _loc1_:Class = §<U§.§5"0§(§7"1§);
         §?v§ = new _loc1_();
         if(§?v§)
         {
            § var§.addChild(§?v§);
            § var§.mouseChildren = false;
            §?v§.mouseEnabled = false;
            § var§.mouseEnabled = false;
            §?v§.enabled = false;
            §?v§.cacheAsBitmap = true;
         }
         return §?v§ != null;
      }
      
      public static function mouseDown() : Boolean
      {
         return §=!M§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §=!M§("_Up");
      }
      
      private static function §=!M§(param1:String) : Boolean
      {
         if(!§?v§ || §86§.length < 1 || !§>!`§)
         {
            return false;
         }
         var _loc2_:Sprite = §?v§.getChildByName(§86§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§86§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§86§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§3!9§)
         {
            return § var§;
         }
         § var§ = new Sprite();
         §3!9§ = true;
         return § var§;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         if(!§3!9§ || !§?v§ || !§?v§.visible)
         {
            return;
         }
         § var§.x = param1;
         § var§.y = param2;
      }
      
      public static function § !V§() : void
      {
         if(§?v§)
         {
            if(§?v§.visible)
            {
               §>!S§ = §86§;
            }
            §0!t§("");
         }
      }
      
      public static function §<!8§() : void
      {
         if(§?v§)
         {
            if(!§?v§.visible)
            {
               §0!t§(§>!S§);
            }
         }
      }
   }
}
