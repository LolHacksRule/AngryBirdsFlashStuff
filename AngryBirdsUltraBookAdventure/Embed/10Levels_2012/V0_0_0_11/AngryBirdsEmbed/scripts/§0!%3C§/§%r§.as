package §0!<§
{
   import com.rovio.assets.§,u§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §%r§ extends Sprite
   {
      
      private static var §>H§:Boolean = false;
      
      private static const §;X§:String = "Mouse_Cursors";
      
      private static var §,!;§:Sprite;
      
      private static var §'!4§:MovieClip;
      
      private static var §+Z§:String;
      
      private static var §5v§:String = "";
      
      private static var §1T§:Boolean = false;
       
      
      public function §%r§()
      {
         super();
      }
      
      public static function §2!2§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§+Z§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §+Z§ = "";
         §1T§ = false;
         if(!§>H§ || !§'!4§)
         {
            if(!§-H§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §'!4§.numChildren)
         {
            §'!4§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §'!4§.getChildByName(param1) as Sprite))
         {
            §'!4§.visible = false;
            Mouse.show();
            return false;
         }
         §+Z§ = param1;
         §'!4§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§+Z§ + "_Up"))
         {
            §1T§ = true;
         }
         if(§1T§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§+Z§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §-H§() : Boolean
      {
         var _loc1_:Class = §,u§.§'[§(§;X§);
         §'!4§ = new _loc1_();
         if(§'!4§)
         {
            §,!;§.addChild(§'!4§);
            §,!;§.mouseChildren = false;
            §'!4§.mouseEnabled = false;
            §,!;§.mouseEnabled = false;
            §'!4§.enabled = false;
            §'!4§.cacheAsBitmap = true;
         }
         return §'!4§ != null;
      }
      
      public static function §'m§() : Boolean
      {
         return §1b§("_Down");
      }
      
      public static function §[m§() : Boolean
      {
         return §1b§("_Up");
      }
      
      private static function §1b§(param1:String) : Boolean
      {
         if(!§'!4§ || §+Z§.length < 1 || !§1T§)
         {
            return false;
         }
         var _loc2_:Sprite = §'!4§.getChildByName(§+Z§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§+Z§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§+Z§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§>H§)
         {
            return §,!;§;
         }
         §,!;§ = new Sprite();
         §>H§ = true;
         return §,!;§;
      }
      
      public static function §06§(param1:Number, param2:Number) : void
      {
         if(!§>H§ || !§'!4§ || !§'!4§.visible)
         {
            return;
         }
         §,!;§.x = param1;
         §,!;§.y = param2;
      }
      
      public static function §@!A§() : void
      {
         if(§'!4§)
         {
            if(§'!4§.visible)
            {
               §5v§ = §+Z§;
            }
            §2!2§("");
         }
      }
      
      public static function §@p§() : void
      {
         if(§'!4§)
         {
            if(!§'!4§.visible)
            {
               §2!2§(§5v§);
            }
         }
      }
   }
}
