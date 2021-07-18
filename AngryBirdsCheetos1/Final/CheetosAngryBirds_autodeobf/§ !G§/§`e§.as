package § !G§
{
   import §1!K§.§<!I§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §`e§ extends Sprite
   {
      
      private static var §7"§:Boolean = false;
      
      private static const §3!C§:String = "Mouse_Cursors";
      
      private static var §7x§:Sprite;
      
      private static var §?l§:MovieClip;
      
      private static var §<!^§:String;
      
      private static var §1q§:String = "";
      
      private static var §^F§:Boolean = false;
       
      
      public function §`e§()
      {
         super();
      }
      
      public static function §=!U§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§<!^§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §<!^§ = "";
         §^F§ = false;
         if(!§7"§ || !§?l§)
         {
            if(!§[O§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §?l§.numChildren)
         {
            §?l§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §?l§.getChildByName(param1) as Sprite))
         {
            §?l§.visible = false;
            Mouse.show();
            return false;
         }
         §<!^§ = param1;
         §?l§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§<!^§ + "_Up"))
         {
            §^F§ = true;
         }
         if(§^F§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§<!^§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §[O§() : Boolean
      {
         var _loc1_:Class = §<!I§.§;!U§(§3!C§);
         §?l§ = new _loc1_();
         if(§?l§)
         {
            §7x§.addChild(§?l§);
            §7x§.mouseChildren = false;
            §?l§.mouseEnabled = false;
            §7x§.mouseEnabled = false;
            §?l§.enabled = false;
            §?l§.cacheAsBitmap = true;
         }
         return §?l§ != null;
      }
      
      public static function §`i§() : Boolean
      {
         return §%,§("_Down");
      }
      
      public static function §+z§() : Boolean
      {
         return §%,§("_Up");
      }
      
      private static function §%,§(param1:String) : Boolean
      {
         if(!§?l§ || §<!^§.length < 1 || !§^F§)
         {
            return false;
         }
         var _loc2_:Sprite = §?l§.getChildByName(§<!^§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§<!^§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§<!^§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§7"§)
         {
            return §7x§;
         }
         §7x§ = new Sprite();
         §7"§ = true;
         return §7x§;
      }
      
      public static function §'9§(param1:Number, param2:Number) : void
      {
         if(!§7"§ || !§?l§ || !§?l§.visible)
         {
            return;
         }
         §7x§.x = param1;
         §7x§.y = param2;
      }
      
      public static function §[P§() : void
      {
         if(§?l§)
         {
            if(§?l§.visible)
            {
               §1q§ = §<!^§;
            }
            §=!U§("");
         }
      }
      
      public static function §8$§() : void
      {
         if(§?l§)
         {
            if(!§?l§.visible)
            {
               §=!U§(§1q§);
            }
         }
      }
   }
}
