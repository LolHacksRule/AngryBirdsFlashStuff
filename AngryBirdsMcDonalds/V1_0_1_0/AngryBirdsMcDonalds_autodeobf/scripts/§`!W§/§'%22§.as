package §`!W§
{
   import §#Z§.§?R§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §'"§ extends Sprite
   {
      
      private static var §!+§:Boolean = false;
      
      private static const §-N§:String = "Mouse_Cursors";
      
      private static var §4[§:Sprite;
      
      private static var §=!E§:MovieClip;
      
      private static var §]t§:String;
      
      private static var §%!<§:String = "";
      
      private static var §=! §:Boolean = false;
       
      
      public function §'"§()
      {
         super();
      }
      
      public static function §1w§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§]t§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §]t§ = "";
         §=! § = false;
         if(!§!+§ || !§=!E§)
         {
            if(!§`Q§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §=!E§.numChildren)
         {
            §=!E§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §=!E§.getChildByName(param1) as Sprite))
         {
            §=!E§.visible = false;
            Mouse.show();
            return false;
         }
         §]t§ = param1;
         §=!E§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§]t§ + "_Up"))
         {
            §=! § = true;
         }
         if(§=! §)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§]t§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §`Q§() : Boolean
      {
         var _loc1_:Class = §?R§.§>e§(§-N§);
         §=!E§ = new _loc1_();
         if(§=!E§)
         {
            §4[§.addChild(§=!E§);
            §4[§.mouseChildren = false;
            §=!E§.mouseEnabled = false;
            §4[§.mouseEnabled = false;
            §=!E§.enabled = false;
            §=!E§.cacheAsBitmap = true;
         }
         return §=!E§ != null;
      }
      
      public static function §?r§() : Boolean
      {
         return §5!C§("_Down");
      }
      
      public static function §!8§() : Boolean
      {
         return §5!C§("_Up");
      }
      
      private static function §5!C§(param1:String) : Boolean
      {
         if(!§=!E§ || §]t§.length < 1 || !§=! §)
         {
            return false;
         }
         var _loc2_:Sprite = §=!E§.getChildByName(§]t§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§]t§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§]t§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§!+§)
         {
            return §4[§;
         }
         §4[§ = new Sprite();
         §!+§ = true;
         return §4[§;
      }
      
      public static function §,!K§(param1:Number, param2:Number) : void
      {
         if(!§!+§ || !§=!E§ || !§=!E§.visible)
         {
            return;
         }
         §4[§.x = param1;
         §4[§.y = param2;
      }
      
      public static function §;7§() : void
      {
         if(§=!E§)
         {
            if(§=!E§.visible)
            {
               §%!<§ = §]t§;
            }
            §1w§("");
         }
      }
      
      public static function §6!d§() : void
      {
         if(§=!E§)
         {
            if(!§=!E§.visible)
            {
               §1w§(§%!<§);
            }
         }
      }
   }
}
