package §%!$§
{
   import §7S§.§3t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §;!U§ extends Sprite
   {
      
      private static var §=U§:Boolean = false;
      
      private static const §"x§:String = "Mouse_Cursors";
      
      private static var §-+§:Sprite;
      
      private static var §0`§:MovieClip;
      
      private static var § J§:String;
      
      private static var §'3§:String = "";
      
      private static var §0a§:Boolean = false;
       
      
      public function §;!U§()
      {
         super();
      }
      
      public static function §+!Y§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§ J§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         § J§ = "";
         §0a§ = false;
         if(!§=U§ || !§0`§)
         {
            if(!§+#§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §0`§.numChildren)
         {
            §0`§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §0`§.getChildByName(param1) as Sprite))
         {
            §0`§.visible = false;
            Mouse.show();
            return false;
         }
         § J§ = param1;
         §0`§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§ J§ + "_Up"))
         {
            §0a§ = true;
         }
         if(§0a§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§ J§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §+#§() : Boolean
      {
         var _loc1_:Class = §3t§.§#v§(§"x§);
         §0`§ = new _loc1_();
         if(§0`§)
         {
            §-+§.addChild(§0`§);
            §-+§.mouseChildren = false;
            §0`§.mouseEnabled = false;
            §-+§.mouseEnabled = false;
            §0`§.enabled = false;
            §0`§.cacheAsBitmap = true;
         }
         return §0`§ != null;
      }
      
      public static function §0!F§() : Boolean
      {
         return §<!`§("_Down");
      }
      
      public static function §45§() : Boolean
      {
         return §<!`§("_Up");
      }
      
      private static function §<!`§(param1:String) : Boolean
      {
         if(!§0`§ || § J§.length < 1 || !§0a§)
         {
            return false;
         }
         var _loc2_:Sprite = §0`§.getChildByName(§ J§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§ J§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§ J§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§=U§)
         {
            return §-+§;
         }
         §-+§ = new Sprite();
         §=U§ = true;
         return §-+§;
      }
      
      public static function §!!%§(param1:Number, param2:Number) : void
      {
         if(!§=U§ || !§0`§ || !§0`§.visible)
         {
            return;
         }
         §-+§.x = param1;
         §-+§.y = param2;
      }
      
      public static function §<'§() : void
      {
         if(§0`§)
         {
            if(§0`§.visible)
            {
               §'3§ = § J§;
            }
            §+!Y§("");
         }
      }
      
      public static function §8a§() : void
      {
         if(§0`§)
         {
            if(!§0`§.visible)
            {
               §+!Y§(§'3§);
            }
         }
      }
   }
}
