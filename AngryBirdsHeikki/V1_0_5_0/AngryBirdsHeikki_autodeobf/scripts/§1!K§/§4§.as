package §1!K§
{
   import §@u§.§]!-§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §4§ extends Sprite
   {
      
      private static var §52§:Boolean = false;
      
      private static const §3=§:String = "Mouse_Cursors";
      
      private static var §0!G§:Sprite;
      
      private static var §5!]§:MovieClip;
      
      private static var §9!>§:String;
      
      private static var §[!Y§:String = "";
      
      private static var §8_§:Boolean = false;
       
      
      public function §4§()
      {
         super();
      }
      
      public static function §8!=§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§9!>§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §9!>§ = "";
         §8_§ = false;
         if(!§52§ || !§5!]§)
         {
            if(!§6A§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §5!]§.numChildren)
         {
            §5!]§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §5!]§.getChildByName(param1) as Sprite))
         {
            §5!]§.visible = false;
            Mouse.show();
            return false;
         }
         §9!>§ = param1;
         §5!]§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§9!>§ + "_Up"))
         {
            §8_§ = true;
         }
         if(§8_§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§9!>§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §6A§() : Boolean
      {
         var _loc1_:Class = §]!-§.§=!M§(§3=§);
         §5!]§ = new _loc1_();
         if(§5!]§)
         {
            §0!G§.addChild(§5!]§);
            §0!G§.mouseChildren = false;
            §5!]§.mouseEnabled = false;
            §0!G§.mouseEnabled = false;
            §5!]§.enabled = false;
            §5!]§.cacheAsBitmap = true;
         }
         return §5!]§ != null;
      }
      
      public static function §!!6§() : Boolean
      {
         return §7!D§("_Down");
      }
      
      public static function §=e§() : Boolean
      {
         return §7!D§("_Up");
      }
      
      private static function §7!D§(param1:String) : Boolean
      {
         if(!§5!]§ || §9!>§.length < 1 || !§8_§)
         {
            return false;
         }
         var _loc2_:Sprite = §5!]§.getChildByName(§9!>§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§9!>§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§9!>§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§52§)
         {
            return §0!G§;
         }
         §0!G§ = new Sprite();
         §52§ = true;
         return §0!G§;
      }
      
      public static function §1w§(param1:Number, param2:Number) : void
      {
         if(!§52§ || !§5!]§ || !§5!]§.visible)
         {
            return;
         }
         §0!G§.x = param1;
         §0!G§.y = param2;
      }
      
      public static function §8!^§() : void
      {
         if(§5!]§)
         {
            if(§5!]§.visible)
            {
               §[!Y§ = §9!>§;
            }
            §8!=§("");
         }
      }
      
      public static function §&n§() : void
      {
         if(§5!]§)
         {
            if(!§5!]§.visible)
            {
               §8!=§(§[!Y§);
            }
         }
      }
   }
}
