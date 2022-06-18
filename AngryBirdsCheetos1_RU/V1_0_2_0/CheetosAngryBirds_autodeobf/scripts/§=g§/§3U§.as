package §=g§
{
   import §6&§.§9e§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §3U§ extends Sprite
   {
      
      private static var §'#§:Boolean = false;
      
      private static const §=!N§:String = "Mouse_Cursors";
      
      private static var §%!F§:Sprite;
      
      private static var §]q§:MovieClip;
      
      private static var §;$§:String;
      
      private static var §!!^§:String = "";
      
      private static var §;Q§:Boolean = false;
       
      
      public function §3U§()
      {
         super();
      }
      
      public static function §[=§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§;$§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §;$§ = "";
         §;Q§ = false;
         if(!§'#§ || !§]q§)
         {
            if(!§0!X§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §]q§.numChildren)
         {
            §]q§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §]q§.getChildByName(param1) as Sprite))
         {
            §]q§.visible = false;
            Mouse.show();
            return false;
         }
         §;$§ = param1;
         §]q§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§;$§ + "_Up"))
         {
            §;Q§ = true;
         }
         if(§;Q§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§;$§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §0!X§() : Boolean
      {
         var _loc1_:Class = §9e§.§6!?§(§=!N§);
         §]q§ = new _loc1_();
         if(§]q§)
         {
            §%!F§.addChild(§]q§);
            §%!F§.mouseChildren = false;
            §]q§.mouseEnabled = false;
            §%!F§.mouseEnabled = false;
            §]q§.enabled = false;
            §]q§.cacheAsBitmap = true;
         }
         return §]q§ != null;
      }
      
      public static function §3!&§() : Boolean
      {
         return §+!6§("_Down");
      }
      
      public static function §8!S§() : Boolean
      {
         return §+!6§("_Up");
      }
      
      private static function §+!6§(param1:String) : Boolean
      {
         if(!§]q§ || §;$§.length < 1 || !§;Q§)
         {
            return false;
         }
         var _loc2_:Sprite = §]q§.getChildByName(§;$§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§;$§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§;$§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§'#§)
         {
            return §%!F§;
         }
         §%!F§ = new Sprite();
         §'#§ = true;
         return §%!F§;
      }
      
      public static function §^!9§(param1:Number, param2:Number) : void
      {
         if(!§'#§ || !§]q§ || !§]q§.visible)
         {
            return;
         }
         §%!F§.x = param1;
         §%!F§.y = param2;
      }
      
      public static function § V§() : void
      {
         if(§]q§)
         {
            if(§]q§.visible)
            {
               §!!^§ = §;$§;
            }
            §[=§("");
         }
      }
      
      public static function §+#§() : void
      {
         if(§]q§)
         {
            if(!§]q§.visible)
            {
               §[=§(§!!^§);
            }
         }
      }
   }
}
