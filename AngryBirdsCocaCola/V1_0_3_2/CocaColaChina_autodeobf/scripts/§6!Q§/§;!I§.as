package §6!Q§
{
   import §-!9§.§3!5§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §;!I§ extends Sprite
   {
      
      private static var §3!X§:Boolean = false;
      
      private static const §=6§:String = "Mouse_Cursors";
      
      private static var §^d§:Sprite;
      
      private static var §7k§:MovieClip;
      
      private static var §83§:String;
      
      private static var §-!+§:String = "";
      
      private static var §,1§:Boolean = false;
       
      
      public function §;!I§()
      {
         super();
      }
      
      public static function §1!@§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§83§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §83§ = "";
         §,1§ = false;
         if(!§3!X§ || !§7k§)
         {
            if(!§5%§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §7k§.numChildren)
         {
            §7k§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §7k§.getChildByName(param1) as Sprite))
         {
            §7k§.visible = false;
            Mouse.show();
            return false;
         }
         §83§ = param1;
         §7k§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§83§ + "_Up"))
         {
            §,1§ = true;
         }
         if(§,1§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§83§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §5%§() : Boolean
      {
         var _loc1_:Class = §3!5§.§9g§(§=6§);
         §7k§ = new _loc1_();
         if(§7k§)
         {
            §^d§.addChild(§7k§);
            §^d§.mouseChildren = false;
            §7k§.mouseEnabled = false;
            §^d§.mouseEnabled = false;
            §7k§.enabled = false;
            §7k§.cacheAsBitmap = true;
         }
         return §7k§ != null;
      }
      
      public static function §3!B§() : Boolean
      {
         return §`!"§("_Down");
      }
      
      public static function §@!"§() : Boolean
      {
         return §`!"§("_Up");
      }
      
      private static function §`!"§(param1:String) : Boolean
      {
         if(!§7k§ || §83§.length < 1 || !§,1§)
         {
            return false;
         }
         var _loc2_:Sprite = §7k§.getChildByName(§83§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§83§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§83§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§3!X§)
         {
            return §^d§;
         }
         §^d§ = new Sprite();
         §3!X§ = true;
         return §^d§;
      }
      
      public static function §2U§(param1:Number, param2:Number) : void
      {
         if(!§3!X§ || !§7k§ || !§7k§.visible)
         {
            return;
         }
         §^d§.x = param1;
         §^d§.y = param2;
      }
      
      public static function §0!§() : void
      {
         if(§7k§)
         {
            if(§7k§.visible)
            {
               §-!+§ = §83§;
            }
            §1!@§("");
         }
      }
      
      public static function §3!c§() : void
      {
         if(§7k§)
         {
            if(!§7k§.visible)
            {
               §1!@§(§-!+§);
            }
         }
      }
   }
}
