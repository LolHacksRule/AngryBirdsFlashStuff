package §?!8§
{
   import com.rovio.assets.§&%§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §7X§ extends Sprite
   {
      
      private static var §#!I§:Boolean = false;
      
      private static const §+!I§:String = "Mouse_Cursors";
      
      private static var §8W§:Sprite;
      
      private static var §?!F§:MovieClip;
      
      private static var §!!4§:String;
      
      private static var § !;§:String = "";
      
      private static var §62§:Boolean = false;
       
      
      public function §7X§()
      {
         super();
      }
      
      public static function §!!E§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§!!4§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §!!4§ = "";
         §62§ = false;
         if(!§#!I§ || !§?!F§)
         {
            if(!§?G§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §?!F§.numChildren)
         {
            §?!F§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §?!F§.getChildByName(param1) as Sprite))
         {
            §?!F§.visible = false;
            Mouse.show();
            return false;
         }
         §!!4§ = param1;
         §?!F§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§!!4§ + "_Up"))
         {
            §62§ = true;
         }
         if(§62§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§!!4§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §?G§() : Boolean
      {
         var _loc1_:Class = §&%§.§<7§(§+!I§);
         §?!F§ = new _loc1_();
         if(§?!F§)
         {
            §8W§.addChild(§?!F§);
            §8W§.mouseChildren = false;
            §?!F§.mouseEnabled = false;
            §8W§.mouseEnabled = false;
            §?!F§.enabled = false;
            §?!F§.cacheAsBitmap = true;
         }
         return §?!F§ != null;
      }
      
      public static function §&!7§() : Boolean
      {
         return §<l§("_Down");
      }
      
      public static function §2Y§() : Boolean
      {
         return §<l§("_Up");
      }
      
      private static function §<l§(param1:String) : Boolean
      {
         if(!§?!F§ || §!!4§.length < 1 || !§62§)
         {
            return false;
         }
         var _loc2_:Sprite = §?!F§.getChildByName(§!!4§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§!!4§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§!!4§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§#!I§)
         {
            return §8W§;
         }
         §8W§ = new Sprite();
         §#!I§ = true;
         return §8W§;
      }
      
      public static function §+d§(param1:Number, param2:Number) : void
      {
         if(!§#!I§ || !§?!F§ || !§?!F§.visible)
         {
            return;
         }
         §8W§.x = param1;
         §8W§.y = param2;
      }
      
      public static function § !6§() : void
      {
         if(§?!F§)
         {
            if(§?!F§.visible)
            {
               § !;§ = §!!4§;
            }
            §!!E§("");
         }
      }
      
      public static function §-t§() : void
      {
         if(§?!F§)
         {
            if(!§?!F§.visible)
            {
               §!!E§(§ !;§);
            }
         }
      }
   }
}
