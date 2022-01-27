package §"1§
{
   import com.rovio.assets.§[G§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §>I§ extends Sprite
   {
      
      private static var §#!?§:Boolean = false;
      
      private static const §#i§:String = "Mouse_Cursors";
      
      private static var §&&§:Sprite;
      
      private static var §7`§:MovieClip;
      
      private static var §2b§:String;
      
      private static var §``§:String = "";
      
      private static var §00§:Boolean = false;
       
      
      public function §>I§()
      {
         super();
      }
      
      public static function §<l§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§2b§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §2b§ = "";
         §00§ = false;
         if(!§#!?§ || !§7`§)
         {
            if(!§2!,§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §7`§.numChildren)
         {
            §7`§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §7`§.getChildByName(param1) as Sprite))
         {
            §7`§.visible = false;
            Mouse.show();
            return false;
         }
         §2b§ = param1;
         §7`§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§2b§ + "_Up"))
         {
            §00§ = true;
         }
         if(§00§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§2b§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §2!,§() : Boolean
      {
         var _loc1_:Class = §[G§.§6u§(§#i§);
         §7`§ = new _loc1_();
         if(§7`§)
         {
            §&&§.addChild(§7`§);
            §&&§.mouseChildren = false;
            §7`§.mouseEnabled = false;
            §&&§.mouseEnabled = false;
            §7`§.enabled = false;
            §7`§.cacheAsBitmap = true;
         }
         return §7`§ != null;
      }
      
      public static function §]#§() : Boolean
      {
         return §[!K§("_Down");
      }
      
      public static function §0!O§() : Boolean
      {
         return §[!K§("_Up");
      }
      
      private static function §[!K§(param1:String) : Boolean
      {
         if(!§7`§ || §2b§.length < 1 || !§00§)
         {
            return false;
         }
         var _loc2_:Sprite = §7`§.getChildByName(§2b§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§2b§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§2b§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§#!?§)
         {
            return §&&§;
         }
         §&&§ = new Sprite();
         §#!?§ = true;
         return §&&§;
      }
      
      public static function §^T§(param1:Number, param2:Number) : void
      {
         if(!§#!?§ || !§7`§ || !§7`§.visible)
         {
            return;
         }
         §&&§.x = param1;
         §&&§.y = param2;
      }
      
      public static function §6E§() : void
      {
         if(§7`§)
         {
            if(§7`§.visible)
            {
               §``§ = §2b§;
            }
            §<l§("");
         }
      }
      
      public static function §>v§() : void
      {
         if(§7`§)
         {
            if(!§7`§.visible)
            {
               §<l§(§``§);
            }
         }
      }
   }
}
