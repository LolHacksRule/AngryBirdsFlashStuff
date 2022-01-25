package §^=§
{
   import § 9§.§=!a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §,!X§ extends Sprite
   {
      
      private static var §"`§:Boolean = false;
      
      private static const §<+§:String = "Mouse_Cursors";
      
      private static var §8x§:Sprite;
      
      private static var §3S§:MovieClip;
      
      private static var §19§:String;
      
      private static var §+l§:String = "";
      
      private static var §4Z§:Boolean = false;
       
      
      public function §,!X§()
      {
         super();
      }
      
      public static function §-C§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§19§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §19§ = "";
         §4Z§ = false;
         if(!§"`§ || !§3S§)
         {
            if(!§+!6§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §3S§.numChildren)
         {
            §3S§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §3S§.getChildByName(param1) as Sprite))
         {
            §3S§.visible = false;
            Mouse.show();
            return false;
         }
         §19§ = param1;
         §3S§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§19§ + "_Up"))
         {
            §4Z§ = true;
         }
         if(§4Z§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§19§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §+!6§() : Boolean
      {
         var _loc1_:Class = §=!a§.§@o§(§<+§);
         §3S§ = new _loc1_();
         if(§3S§)
         {
            §8x§.addChild(§3S§);
            §8x§.mouseChildren = false;
            §3S§.mouseEnabled = false;
            §8x§.mouseEnabled = false;
            §3S§.enabled = false;
            §3S§.cacheAsBitmap = true;
         }
         return §3S§ != null;
      }
      
      public static function §]p§() : Boolean
      {
         return §4$§("_Down");
      }
      
      public static function §2U§() : Boolean
      {
         return §4$§("_Up");
      }
      
      private static function §4$§(param1:String) : Boolean
      {
         if(!§3S§ || §19§.length < 1 || !§4Z§)
         {
            return false;
         }
         var _loc2_:Sprite = §3S§.getChildByName(§19§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§19§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§19§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§"`§)
         {
            return §8x§;
         }
         §8x§ = new Sprite();
         §"`§ = true;
         return §8x§;
      }
      
      public static function §<B§(param1:Number, param2:Number) : void
      {
         if(!§"`§ || !§3S§ || !§3S§.visible)
         {
            return;
         }
         §8x§.x = param1;
         §8x§.y = param2;
      }
      
      public static function §?6§() : void
      {
         if(§3S§)
         {
            if(§3S§.visible)
            {
               §+l§ = §19§;
            }
            §-C§("");
         }
      }
      
      public static function §try §() : void
      {
         if(§3S§)
         {
            if(!§3S§.visible)
            {
               §-C§(§+l§);
            }
         }
      }
   }
}
