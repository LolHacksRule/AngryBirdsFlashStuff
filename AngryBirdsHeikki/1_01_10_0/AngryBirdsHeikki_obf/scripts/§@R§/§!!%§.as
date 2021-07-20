package §@R§
{
   import §]!6§.§false§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §!!%§ extends Sprite
   {
      
      private static var §%r§:Boolean = false;
      
      private static const §2M§:String = "Mouse_Cursors";
      
      private static var §'4§:Sprite;
      
      private static var §8!X§:MovieClip;
      
      private static var §#6§:String;
      
      private static var §"]§:String = "";
      
      private static var §-!P§:Boolean = false;
       
      
      public function §!!%§()
      {
         super();
      }
      
      public static function §&b§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§#6§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §#6§ = "";
         §-!P§ = false;
         if(!§%r§ || !§8!X§)
         {
            if(!§?!6§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §8!X§.numChildren)
         {
            §8!X§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §8!X§.getChildByName(param1) as Sprite))
         {
            §8!X§.visible = false;
            Mouse.show();
            return false;
         }
         §#6§ = param1;
         §8!X§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§#6§ + "_Up"))
         {
            §-!P§ = true;
         }
         if(§-!P§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§#6§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §?!6§() : Boolean
      {
         var _loc1_:Class = §false§.§5#§(§2M§);
         §8!X§ = new _loc1_();
         if(§8!X§)
         {
            §'4§.addChild(§8!X§);
            §'4§.mouseChildren = false;
            §8!X§.mouseEnabled = false;
            §'4§.mouseEnabled = false;
            §8!X§.enabled = false;
            §8!X§.cacheAsBitmap = true;
         }
         return §8!X§ != null;
      }
      
      public static function §;"§() : Boolean
      {
         return §]!<§("_Down");
      }
      
      public static function §<!c§() : Boolean
      {
         return §]!<§("_Up");
      }
      
      private static function §]!<§(param1:String) : Boolean
      {
         if(!§8!X§ || §#6§.length < 1 || !§-!P§)
         {
            return false;
         }
         var _loc2_:Sprite = §8!X§.getChildByName(§#6§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§#6§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§#6§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§%r§)
         {
            return §'4§;
         }
         §'4§ = new Sprite();
         §%r§ = true;
         return §'4§;
      }
      
      public static function §`0§(param1:Number, param2:Number) : void
      {
         if(!§%r§ || !§8!X§ || !§8!X§.visible)
         {
            return;
         }
         §'4§.x = param1;
         §'4§.y = param2;
      }
      
      public static function §;@§() : void
      {
         if(§8!X§)
         {
            if(§8!X§.visible)
            {
               §"]§ = §#6§;
            }
            §&b§("");
         }
      }
      
      public static function §46§() : void
      {
         if(§8!X§)
         {
            if(!§8!X§.visible)
            {
               §&b§(§"]§);
            }
         }
      }
   }
}
