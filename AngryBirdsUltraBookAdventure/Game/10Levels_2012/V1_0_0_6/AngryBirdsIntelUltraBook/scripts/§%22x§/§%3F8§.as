package §"x§
{
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §?8§ extends Sprite
   {
      
      private static var §,!0§:Boolean = false;
      
      private static const §^!$§:String = "Mouse_Cursors";
      
      private static var §7!;§:Sprite;
      
      private static var §+b§:MovieClip;
      
      private static var §8! §:String;
      
      private static var §>2§:String = "";
      
      private static var §`D§:Boolean = false;
       
      
      public function §?8§()
      {
         super();
      }
      
      public static function §8,§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§8! § == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §8! § = "";
         §`D§ = false;
         if(!§,!0§ || !§+b§)
         {
            if(!§"T§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §+b§.numChildren)
         {
            §+b§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §+b§.getChildByName(param1) as Sprite))
         {
            §+b§.visible = false;
            Mouse.show();
            return false;
         }
         §8! § = param1;
         §+b§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§8! § + "_Up"))
         {
            §`D§ = true;
         }
         if(§`D§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§8! § + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §"T§() : Boolean
      {
         var _loc1_:Class = §`!t§.§=J§(§^!$§);
         §+b§ = new _loc1_();
         if(§+b§)
         {
            §7!;§.addChild(§+b§);
            §7!;§.mouseChildren = false;
            §+b§.mouseEnabled = false;
            §7!;§.mouseEnabled = false;
            §+b§.enabled = false;
            §+b§.cacheAsBitmap = true;
         }
         return §+b§ != null;
      }
      
      public static function §&#§() : Boolean
      {
         return §61§("_Down");
      }
      
      public static function §]!%§() : Boolean
      {
         return §61§("_Up");
      }
      
      private static function §61§(param1:String) : Boolean
      {
         if(!§+b§ || §8! §.length < 1 || !§`D§)
         {
            return false;
         }
         var _loc2_:Sprite = §+b§.getChildByName(§8! §) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§8! § + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§8! § + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§,!0§)
         {
            return §7!;§;
         }
         §7!;§ = new Sprite();
         §,!0§ = true;
         return §7!;§;
      }
      
      public static function §^!#§(param1:Number, param2:Number) : void
      {
         if(!§,!0§ || !§+b§ || !§+b§.visible)
         {
            return;
         }
         §7!;§.x = param1;
         §7!;§.y = param2;
      }
      
      public static function §`!H§() : void
      {
         if(§+b§)
         {
            if(§+b§.visible)
            {
               §>2§ = §8! §;
            }
            §8,§("");
         }
      }
      
      public static function §#!$§() : void
      {
         if(§+b§)
         {
            if(!§+b§.visible)
            {
               §8,§(§>2§);
            }
         }
      }
   }
}
