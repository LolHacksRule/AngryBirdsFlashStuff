package §0i§
{
   import §"!S§.§<s§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §8!b§ extends Sprite
   {
      
      private static var §=%§:Boolean = false;
      
      private static const §]!-§:String = "Mouse_Cursors";
      
      private static var §0]§:Sprite;
      
      private static var §7!D§:MovieClip;
      
      private static var §5[§:String;
      
      private static var §^W§:String = "";
      
      private static var §=!J§:Boolean = false;
       
      
      public function §8!b§()
      {
         super();
      }
      
      public static function §=W§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§5[§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §5[§ = "";
         §=!J§ = false;
         if(!§=%§ || !§7!D§)
         {
            if(!§;!N§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §7!D§.numChildren)
         {
            §7!D§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §7!D§.getChildByName(param1) as Sprite))
         {
            §7!D§.visible = false;
            Mouse.show();
            return false;
         }
         §5[§ = param1;
         §7!D§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§5[§ + "_Up"))
         {
            §=!J§ = true;
         }
         if(§=!J§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§5[§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §;!N§() : Boolean
      {
         var _loc1_:Class = §<s§.§0b§(§]!-§);
         §7!D§ = new _loc1_();
         if(§7!D§)
         {
            §0]§.addChild(§7!D§);
            §0]§.mouseChildren = false;
            §7!D§.mouseEnabled = false;
            §0]§.mouseEnabled = false;
            §7!D§.enabled = false;
            §7!D§.cacheAsBitmap = true;
         }
         return §7!D§ != null;
      }
      
      public static function §7q§() : Boolean
      {
         return §6s§("_Down");
      }
      
      public static function §<m§() : Boolean
      {
         return §6s§("_Up");
      }
      
      private static function §6s§(param1:String) : Boolean
      {
         if(!§7!D§ || §5[§.length < 1 || !§=!J§)
         {
            return false;
         }
         var _loc2_:Sprite = §7!D§.getChildByName(§5[§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§5[§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§5[§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§=%§)
         {
            return §0]§;
         }
         §0]§ = new Sprite();
         §=%§ = true;
         return §0]§;
      }
      
      public static function §"!§(param1:Number, param2:Number) : void
      {
         if(!§=%§ || !§7!D§ || !§7!D§.visible)
         {
            return;
         }
         §0]§.x = param1;
         §0]§.y = param2;
      }
      
      public static function §@J§() : void
      {
         if(§7!D§)
         {
            if(§7!D§.visible)
            {
               §^W§ = §5[§;
            }
            §=W§("");
         }
      }
      
      public static function §6!N§() : void
      {
         if(§7!D§)
         {
            if(!§7!D§.visible)
            {
               §=W§(§^W§);
            }
         }
      }
   }
}
