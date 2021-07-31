package §3a§
{
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §'q§ extends Sprite
   {
      
      private static var §8d§:Boolean = false;
      
      private static const §9v§:String = "Mouse_Cursors";
      
      private static var §5X§:Sprite;
      
      private static var §"9§:MovieClip;
      
      private static var §1E§:String;
      
      private static var §7!<§:String = "";
      
      private static var §@!>§:Boolean = false;
       
      
      public function §'q§()
      {
         super();
      }
      
      public static function §7C§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§1E§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §1E§ = "";
         §@!>§ = false;
         if(!§8d§ || !§"9§)
         {
            if(!§!V§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §"9§.numChildren)
         {
            §"9§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §"9§.getChildByName(param1) as Sprite))
         {
            §"9§.visible = false;
            Mouse.show();
            return false;
         }
         §1E§ = param1;
         §"9§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§1E§ + "_Up"))
         {
            §@!>§ = true;
         }
         if(§@!>§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§1E§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §!V§() : Boolean
      {
         var _loc1_:Class = §]!>§.§8!@§(§9v§);
         §"9§ = new _loc1_();
         if(§"9§)
         {
            §5X§.addChild(§"9§);
            §5X§.mouseChildren = false;
            §"9§.mouseEnabled = false;
            §5X§.mouseEnabled = false;
            §"9§.enabled = false;
            §"9§.cacheAsBitmap = true;
         }
         return §"9§ != null;
      }
      
      public static function §3!4§() : Boolean
      {
         return §6!!§("_Down");
      }
      
      public static function §5e§() : Boolean
      {
         return §6!!§("_Up");
      }
      
      private static function §6!!§(param1:String) : Boolean
      {
         if(!§"9§ || §1E§.length < 1 || !§@!>§)
         {
            return false;
         }
         var _loc2_:Sprite = §"9§.getChildByName(§1E§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§1E§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§1E§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§8d§)
         {
            return §5X§;
         }
         §5X§ = new Sprite();
         §8d§ = true;
         return §5X§;
      }
      
      public static function §7!G§(param1:Number, param2:Number) : void
      {
         if(!§8d§ || !§"9§ || !§"9§.visible)
         {
            return;
         }
         §5X§.x = param1;
         §5X§.y = param2;
      }
      
      public static function §4W§() : void
      {
         if(§"9§)
         {
            if(§"9§.visible)
            {
               §7!<§ = §1E§;
            }
            §7C§("");
         }
      }
      
      public static function §&u§() : void
      {
         if(§"9§)
         {
            if(!§"9§.visible)
            {
               §7C§(§7!<§);
            }
         }
      }
   }
}
