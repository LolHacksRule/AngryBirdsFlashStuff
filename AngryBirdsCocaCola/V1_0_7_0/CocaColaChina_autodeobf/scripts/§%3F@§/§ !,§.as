package §?@§
{
   import §^!L§.§@x§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class § !,§ extends Sprite
   {
      
      private static var §`r§:Boolean = false;
      
      private static const §2!W§:String = "Mouse_Cursors";
      
      private static var §6X§:Sprite;
      
      private static var §1F§:MovieClip;
      
      private static var §42§:String;
      
      private static var §0v§:String = "";
      
      private static var §1H§:Boolean = false;
       
      
      public function § !,§()
      {
         super();
      }
      
      public static function §5I§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§42§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §42§ = "";
         §1H§ = false;
         if(!§`r§ || !§1F§)
         {
            if(!§^z§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §1F§.numChildren)
         {
            §1F§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §1F§.getChildByName(param1) as Sprite))
         {
            §1F§.visible = false;
            Mouse.show();
            return false;
         }
         §42§ = param1;
         §1F§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§42§ + "_Up"))
         {
            §1H§ = true;
         }
         if(§1H§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§42§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §^z§() : Boolean
      {
         var _loc1_:Class = §@x§.§="§(§2!W§);
         §1F§ = new _loc1_();
         if(§1F§)
         {
            §6X§.addChild(§1F§);
            §6X§.mouseChildren = false;
            §1F§.mouseEnabled = false;
            §6X§.mouseEnabled = false;
            §1F§.enabled = false;
            §1F§.cacheAsBitmap = true;
         }
         return §1F§ != null;
      }
      
      public static function §;s§() : Boolean
      {
         return §^`§("_Down");
      }
      
      public static function §!!0§() : Boolean
      {
         return §^`§("_Up");
      }
      
      private static function §^`§(param1:String) : Boolean
      {
         if(!§1F§ || §42§.length < 1 || !§1H§)
         {
            return false;
         }
         var _loc2_:Sprite = §1F§.getChildByName(§42§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§42§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§42§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§`r§)
         {
            return §6X§;
         }
         §6X§ = new Sprite();
         §`r§ = true;
         return §6X§;
      }
      
      public static function §0!S§(param1:Number, param2:Number) : void
      {
         if(!§`r§ || !§1F§ || !§1F§.visible)
         {
            return;
         }
         §6X§.x = param1;
         §6X§.y = param2;
      }
      
      public static function §9N§() : void
      {
         if(§1F§)
         {
            if(§1F§.visible)
            {
               §0v§ = §42§;
            }
            §5I§("");
         }
      }
      
      public static function §>!I§() : void
      {
         if(§1F§)
         {
            if(!§1F§.visible)
            {
               §5I§(§0v§);
            }
         }
      }
   }
}
