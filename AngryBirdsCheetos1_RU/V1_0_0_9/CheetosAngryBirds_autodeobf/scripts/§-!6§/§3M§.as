package §-!6§
{
   import §1q§.§-!+§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §3M§ extends Sprite
   {
      
      private static var §<,§:Boolean = false;
      
      private static const §+!^§:String = "Mouse_Cursors";
      
      private static var §-n§:Sprite;
      
      private static var §%!K§:MovieClip;
      
      private static var §-R§:String;
      
      private static var §#^§:String = "";
      
      private static var §;!P§:Boolean = false;
       
      
      public function §3M§()
      {
         super();
      }
      
      public static function §3!T§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§-R§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §-R§ = "";
         §;!P§ = false;
         if(!§<,§ || !§%!K§)
         {
            if(!§`a§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §%!K§.numChildren)
         {
            §%!K§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §%!K§.getChildByName(param1) as Sprite))
         {
            §%!K§.visible = false;
            Mouse.show();
            return false;
         }
         §-R§ = param1;
         §%!K§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§-R§ + "_Up"))
         {
            §;!P§ = true;
         }
         if(§;!P§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§-R§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §`a§() : Boolean
      {
         var _loc1_:Class = §-!+§.§"x§(§+!^§);
         §%!K§ = new _loc1_();
         if(§%!K§)
         {
            §-n§.addChild(§%!K§);
            §-n§.mouseChildren = false;
            §%!K§.mouseEnabled = false;
            §-n§.mouseEnabled = false;
            §%!K§.enabled = false;
            §%!K§.cacheAsBitmap = true;
         }
         return §%!K§ != null;
      }
      
      public static function §'!;§() : Boolean
      {
         return §'o§("_Down");
      }
      
      public static function §+8§() : Boolean
      {
         return §'o§("_Up");
      }
      
      private static function §'o§(param1:String) : Boolean
      {
         if(!§%!K§ || §-R§.length < 1 || !§;!P§)
         {
            return false;
         }
         var _loc2_:Sprite = §%!K§.getChildByName(§-R§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§-R§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§-R§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§<,§)
         {
            return §-n§;
         }
         §-n§ = new Sprite();
         §<,§ = true;
         return §-n§;
      }
      
      public static function §3O§(param1:Number, param2:Number) : void
      {
         if(!§<,§ || !§%!K§ || !§%!K§.visible)
         {
            return;
         }
         §-n§.x = param1;
         §-n§.y = param2;
      }
      
      public static function §else §() : void
      {
         if(§%!K§)
         {
            if(§%!K§.visible)
            {
               §#^§ = §-R§;
            }
            §3!T§("");
         }
      }
      
      public static function §^-§() : void
      {
         if(§%!K§)
         {
            if(!§%!K§.visible)
            {
               §3!T§(§#^§);
            }
         }
      }
   }
}
