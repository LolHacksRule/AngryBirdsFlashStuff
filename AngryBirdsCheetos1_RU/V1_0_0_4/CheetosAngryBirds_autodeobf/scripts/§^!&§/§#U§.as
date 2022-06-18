package §^!&§
{
   import §@y§.§"!X§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §#U§ extends Sprite
   {
      
      private static var §'!=§:Boolean = false;
      
      private static const §0!C§:String = "Mouse_Cursors";
      
      private static var §&!U§:Sprite;
      
      private static var §'!!§:MovieClip;
      
      private static var §2U§:String;
      
      private static var §%!_§:String = "";
      
      private static var §@;§:Boolean = false;
       
      
      public function §#U§()
      {
         super();
      }
      
      public static function §"#§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§2U§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §2U§ = "";
         §@;§ = false;
         if(!§'!=§ || !§'!!§)
         {
            if(!§9!&§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §'!!§.numChildren)
         {
            §'!!§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §'!!§.getChildByName(param1) as Sprite))
         {
            §'!!§.visible = false;
            Mouse.show();
            return false;
         }
         §2U§ = param1;
         §'!!§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§2U§ + "_Up"))
         {
            §@;§ = true;
         }
         if(§@;§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§2U§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §9!&§() : Boolean
      {
         var _loc1_:Class = §"!X§.§1!0§(§0!C§);
         §'!!§ = new _loc1_();
         if(§'!!§)
         {
            §&!U§.addChild(§'!!§);
            §&!U§.mouseChildren = false;
            §'!!§.mouseEnabled = false;
            §&!U§.mouseEnabled = false;
            §'!!§.enabled = false;
            §'!!§.cacheAsBitmap = true;
         }
         return §'!!§ != null;
      }
      
      public static function §@!%§() : Boolean
      {
         return §7!&§("_Down");
      }
      
      public static function §@s§() : Boolean
      {
         return §7!&§("_Up");
      }
      
      private static function §7!&§(param1:String) : Boolean
      {
         if(!§'!!§ || §2U§.length < 1 || !§@;§)
         {
            return false;
         }
         var _loc2_:Sprite = §'!!§.getChildByName(§2U§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§2U§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§2U§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§'!=§)
         {
            return §&!U§;
         }
         §&!U§ = new Sprite();
         §'!=§ = true;
         return §&!U§;
      }
      
      public static function §@>§(param1:Number, param2:Number) : void
      {
         if(!§'!=§ || !§'!!§ || !§'!!§.visible)
         {
            return;
         }
         §&!U§.x = param1;
         §&!U§.y = param2;
      }
      
      public static function § !&§() : void
      {
         if(§'!!§)
         {
            if(§'!!§.visible)
            {
               §%!_§ = §2U§;
            }
            §"#§("");
         }
      }
      
      public static function §5!6§() : void
      {
         if(§'!!§)
         {
            if(!§'!!§.visible)
            {
               §"#§(§%!_§);
            }
         }
      }
   }
}
