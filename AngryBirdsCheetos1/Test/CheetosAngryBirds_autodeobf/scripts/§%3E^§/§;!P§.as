package §>^§
{
   import §7'§.§!y§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §;!P§ extends Sprite
   {
      
      private static var §9!#§:Boolean = false;
      
      private static const §2!2§:String = "Mouse_Cursors";
      
      private static var §7E§:Sprite;
      
      private static var §-t§:MovieClip;
      
      private static var § for§:String;
      
      private static var §<5§:String = "";
      
      private static var §-5§:Boolean = false;
       
      
      public function §;!P§()
      {
         super();
      }
      
      public static function §#l§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§ for§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         § for§ = "";
         §-5§ = false;
         if(!§9!#§ || !§-t§)
         {
            if(!§9!T§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §-t§.numChildren)
         {
            §-t§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §-t§.getChildByName(param1) as Sprite))
         {
            §-t§.visible = false;
            Mouse.show();
            return false;
         }
         § for§ = param1;
         §-t§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§ for§ + "_Up"))
         {
            §-5§ = true;
         }
         if(§-5§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§ for§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §9!T§() : Boolean
      {
         var _loc1_:Class = §!y§.§%!C§(§2!2§);
         §-t§ = new _loc1_();
         if(§-t§)
         {
            §7E§.addChild(§-t§);
            §7E§.mouseChildren = false;
            §-t§.mouseEnabled = false;
            §7E§.mouseEnabled = false;
            §-t§.enabled = false;
            §-t§.cacheAsBitmap = true;
         }
         return §-t§ != null;
      }
      
      public static function §3l§() : Boolean
      {
         return §-!M§("_Down");
      }
      
      public static function § !>§() : Boolean
      {
         return §-!M§("_Up");
      }
      
      private static function §-!M§(param1:String) : Boolean
      {
         if(!§-t§ || § for§.length < 1 || !§-5§)
         {
            return false;
         }
         var _loc2_:Sprite = §-t§.getChildByName(§ for§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§ for§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§ for§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§9!#§)
         {
            return §7E§;
         }
         §7E§ = new Sprite();
         §9!#§ = true;
         return §7E§;
      }
      
      public static function §0!?§(param1:Number, param2:Number) : void
      {
         if(!§9!#§ || !§-t§ || !§-t§.visible)
         {
            return;
         }
         §7E§.x = param1;
         §7E§.y = param2;
      }
      
      public static function §"!&§() : void
      {
         if(§-t§)
         {
            if(§-t§.visible)
            {
               §<5§ = § for§;
            }
            §#l§("");
         }
      }
      
      public static function §9^§() : void
      {
         if(§-t§)
         {
            if(!§-t§.visible)
            {
               §#l§(§<5§);
            }
         }
      }
   }
}
