package §9#K§
{
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §=^§ extends Sprite
   {
      
      private static var §,v§:Boolean = false;
      
      private static const §6""§:String = "Mouse_Cursors";
      
      private static var §^#R§:Sprite;
      
      private static var §^"h§:MovieClip;
      
      private static var §+#r§:String;
      
      private static var §3!>§:String = "";
      
      private static var §`!@§:Boolean = false;
       
      
      public function §=^§()
      {
         super();
      }
      
      public static function §`"l§(param1:String) : Boolean
      {
         if(§+#r§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §+#r§ = "";
         §`!@§ = false;
         if(!§,v§ || !§^"h§)
         {
            if(!§,"2§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §^"h§.numChildren)
         {
            §^"h§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §^"h§.getChildByName(param1) as Sprite))
         {
            §^"h§.visible = false;
            Mouse.show();
            return false;
         }
         §+#r§ = param1;
         §^"h§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§+#r§ + "_Up"))
         {
            §`!@§ = true;
         }
         if(§`!@§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§+#r§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §,"2§() : Boolean
      {
         var _loc1_:Class = §2"O§.§`>§(§6""§);
         §^"h§ = new _loc1_();
         if(§^"h§)
         {
            §^#R§.addChild(§^"h§);
            §^#R§.mouseChildren = false;
            §^"h§.mouseEnabled = false;
            §^#R§.mouseEnabled = false;
            §^"h§.enabled = false;
            §^"h§.cacheAsBitmap = true;
         }
         return §^"h§ != null;
      }
      
      public static function §4!M§() : Boolean
      {
         return §=X§("_Down");
      }
      
      public static function §1$@§() : Boolean
      {
         return §=X§("_Up");
      }
      
      private static function §=X§(param1:String) : Boolean
      {
         if(!§^"h§ || §+#r§.length < 1 || !§`!@§)
         {
            return false;
         }
         var _loc2_:Sprite = §^"h§.getChildByName(§+#r§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§+#r§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§+#r§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§,v§)
         {
            return §^#R§;
         }
         §^#R§ = new Sprite();
         §,v§ = true;
         return §^#R§;
      }
      
      public static function §%G§(param1:Number, param2:Number) : void
      {
         if(!§,v§ || !§^"h§ || !§^"h§.visible)
         {
            return;
         }
         §^#R§.x = param1;
         §^#R§.y = param2;
      }
      
      public static function §5"Q§() : void
      {
         if(§^"h§)
         {
            if(§^"h§.visible)
            {
               §3!>§ = §+#r§;
            }
            §`"l§("");
         }
      }
      
      public static function §>!B§() : void
      {
         if(§^"h§)
         {
            if(!§^"h§.visible)
            {
               §`"l§(§3!>§);
            }
         }
      }
   }
}
