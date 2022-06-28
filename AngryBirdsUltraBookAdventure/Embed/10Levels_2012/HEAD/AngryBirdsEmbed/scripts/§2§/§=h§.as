package §2§
{
   import com.rovio.assets.§7!D§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §=h§ extends Sprite
   {
      
      private static var §%r§:Boolean = false;
      
      private static const §>H§:String = "Mouse_Cursors";
      
      private static var §;X§:Sprite;
      
      private static var §,!;§:MovieClip;
      
      private static var §'!4§:String;
      
      private static var §+Z§:String = "";
      
      private static var §5v§:Boolean = false;
       
      
      public function §=h§()
      {
         super();
      }
      
      public static function §1T§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§'!4§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §'!4§ = "";
         §5v§ = false;
         if(!§%r§ || !§,!;§)
         {
            if(!§2!2§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §,!;§.numChildren)
         {
            §,!;§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §,!;§.getChildByName(param1) as Sprite))
         {
            §,!;§.visible = false;
            Mouse.show();
            return false;
         }
         §'!4§ = param1;
         §,!;§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§'!4§ + "_Up"))
         {
            §5v§ = true;
         }
         if(§5v§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§'!4§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §2!2§() : Boolean
      {
         var _loc1_:Class = §7!D§.§?0§(§>H§);
         §,!;§ = new _loc1_();
         if(§,!;§)
         {
            §;X§.addChild(§,!;§);
            §;X§.mouseChildren = false;
            §,!;§.mouseEnabled = false;
            §;X§.mouseEnabled = false;
            §,!;§.enabled = false;
            §,!;§.cacheAsBitmap = true;
         }
         return §,!;§ != null;
      }
      
      public static function §-H§() : Boolean
      {
         return §[m§("_Down");
      }
      
      public static function §'m§() : Boolean
      {
         return §[m§("_Up");
      }
      
      private static function §[m§(param1:String) : Boolean
      {
         if(!§,!;§ || §'!4§.length < 1 || !§5v§)
         {
            return false;
         }
         var _loc2_:Sprite = §,!;§.getChildByName(§'!4§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§'!4§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§'!4§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§%r§)
         {
            return §;X§;
         }
         §;X§ = new Sprite();
         §%r§ = true;
         return §;X§;
      }
      
      public static function §1b§(param1:Number, param2:Number) : void
      {
         if(!§%r§ || !§,!;§ || !§,!;§.visible)
         {
            return;
         }
         §;X§.x = param1;
         §;X§.y = param2;
      }
      
      public static function §06§() : void
      {
         if(§,!;§)
         {
            if(§,!;§.visible)
            {
               §+Z§ = §'!4§;
            }
            §1T§("");
         }
      }
      
      public static function §@!A§() : void
      {
         if(§,!;§)
         {
            if(!§,!;§.visible)
            {
               §1T§(§+Z§);
            }
         }
      }
   }
}
