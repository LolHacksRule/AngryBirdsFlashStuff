package §8!$§
{
   import com.rovio.assets.§1!C§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class § !D§ extends Sprite
   {
      
      private static var §3!>§:Boolean = false;
      
      private static const §-e§:String = "Mouse_Cursors";
      
      private static var §][§:Sprite;
      
      private static var §+W§:MovieClip;
      
      private static var §7!Z§:String;
      
      private static var §?l§:String = "";
      
      private static var § case§:Boolean = false;
       
      
      public function § !D§()
      {
         super();
      }
      
      public static function §8!P§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§7!Z§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §7!Z§ = "";
         § case§ = false;
         if(!§3!>§ || !§+W§)
         {
            if(!§1w§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §+W§.numChildren)
         {
            §+W§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §+W§.getChildByName(param1) as Sprite))
         {
            §+W§.visible = false;
            Mouse.show();
            return false;
         }
         §7!Z§ = param1;
         §+W§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§7!Z§ + "_Up"))
         {
            § case§ = true;
         }
         if(§ case§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§7!Z§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §1w§() : Boolean
      {
         var _loc1_:Class = §1!C§.§"!&§(§-e§);
         §+W§ = new _loc1_();
         if(§+W§)
         {
            §][§.addChild(§+W§);
            §][§.mouseChildren = false;
            §+W§.mouseEnabled = false;
            §][§.mouseEnabled = false;
            §+W§.enabled = false;
            §+W§.cacheAsBitmap = true;
         }
         return §+W§ != null;
      }
      
      public static function mouseDown() : Boolean
      {
         return §5!2§("_Down");
      }
      
      public static function mouseUp() : Boolean
      {
         return §5!2§("_Up");
      }
      
      private static function §5!2§(param1:String) : Boolean
      {
         if(!§+W§ || §7!Z§.length < 1 || !§ case§)
         {
            return false;
         }
         var _loc2_:Sprite = §+W§.getChildByName(§7!Z§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§7!Z§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§7!Z§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§3!>§)
         {
            return §][§;
         }
         §][§ = new Sprite();
         §3!>§ = true;
         return §][§;
      }
      
      public static function mouseMove(param1:Number, param2:Number) : void
      {
         if(!§3!>§ || !§+W§ || !§+W§.visible)
         {
            return;
         }
         §][§.x = param1;
         §][§.y = param2;
      }
      
      public static function §"q§() : void
      {
         if(§+W§)
         {
            if(§+W§.visible)
            {
               §?l§ = §7!Z§;
            }
            §8!P§("");
         }
      }
      
      public static function §!;§() : void
      {
         if(§+W§)
         {
            if(!§+W§.visible)
            {
               §8!P§(§?l§);
            }
         }
      }
   }
}
