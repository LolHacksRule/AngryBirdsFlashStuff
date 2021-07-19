package §`K§
{
   import com.rovio.assets.§[!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §4N§ extends Sprite
   {
      
      private static var § @§:Boolean = false;
      
      private static const §9^§:String = "Mouse_Cursors";
      
      private static var §@!'§:Sprite;
      
      private static var §[4§:MovieClip;
      
      private static var §;D§:String;
      
      private static var §3H§:String = "";
      
      private static var §#!&§:Boolean = false;
       
      
      public function §4N§()
      {
         super();
      }
      
      public static function §!_§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§;D§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §;D§ = "";
         §#!&§ = false;
         if(!§ @§ || !§[4§)
         {
            if(!§"d§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §[4§.numChildren)
         {
            §[4§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §[4§.getChildByName(param1) as Sprite))
         {
            §[4§.visible = false;
            Mouse.show();
            return false;
         }
         §;D§ = param1;
         §[4§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§;D§ + "_Up"))
         {
            §#!&§ = true;
         }
         if(§#!&§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§;D§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §"d§() : Boolean
      {
         var _loc1_:Class = §[!D§.§8!N§(§9^§);
         §[4§ = new _loc1_();
         if(§[4§)
         {
            §@!'§.addChild(§[4§);
            §@!'§.mouseChildren = false;
            §[4§.mouseEnabled = false;
            §@!'§.mouseEnabled = false;
            §[4§.enabled = false;
            §[4§.cacheAsBitmap = true;
         }
         return §[4§ != null;
      }
      
      public static function §7J§() : Boolean
      {
         return §&Q§("_Down");
      }
      
      public static function §>a§() : Boolean
      {
         return §&Q§("_Up");
      }
      
      private static function §&Q§(param1:String) : Boolean
      {
         if(!§[4§ || §;D§.length < 1 || !§#!&§)
         {
            return false;
         }
         var _loc2_:Sprite = §[4§.getChildByName(§;D§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§;D§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§;D§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§ @§)
         {
            return §@!'§;
         }
         §@!'§ = new Sprite();
         § @§ = true;
         return §@!'§;
      }
      
      public static function §6!F§(param1:Number, param2:Number) : void
      {
         if(!§ @§ || !§[4§ || !§[4§.visible)
         {
            return;
         }
         §@!'§.x = param1;
         §@!'§.y = param2;
      }
      
      public static function §<!K§() : void
      {
         if(§[4§)
         {
            if(§[4§.visible)
            {
               §3H§ = §;D§;
            }
            §!_§("");
         }
      }
      
      public static function §6V§() : void
      {
         if(§[4§)
         {
            if(!§[4§.visible)
            {
               §!_§(§3H§);
            }
         }
      }
   }
}
