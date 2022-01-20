package §'+§
{
   import §;'§.§6d§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §,K§ extends Sprite
   {
      
      private static var §`f§:Boolean = false;
      
      private static const §",§:String = "Mouse_Cursors";
      
      private static var §#z§:Sprite;
      
      private static var §]Y§:MovieClip;
      
      private static var §2h§:String;
      
      private static var §&!Q§:String = "";
      
      private static var §=!h§:Boolean = false;
       
      
      public function §,K§()
      {
         super();
      }
      
      public static function §=T§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§2h§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §2h§ = "";
         §=!h§ = false;
         if(!§`f§ || !§]Y§)
         {
            if(!§6!9§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §]Y§.numChildren)
         {
            §]Y§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §]Y§.getChildByName(param1) as Sprite))
         {
            §]Y§.visible = false;
            Mouse.show();
            return false;
         }
         §2h§ = param1;
         §]Y§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§2h§ + "_Up"))
         {
            §=!h§ = true;
         }
         if(§=!h§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§2h§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §6!9§() : Boolean
      {
         var _loc1_:Class = §6d§.§=!Y§(§",§);
         §]Y§ = new _loc1_();
         if(§]Y§)
         {
            §#z§.addChild(§]Y§);
            §#z§.mouseChildren = false;
            §]Y§.mouseEnabled = false;
            §#z§.mouseEnabled = false;
            §]Y§.enabled = false;
            §]Y§.cacheAsBitmap = true;
         }
         return §]Y§ != null;
      }
      
      public static function §0>§() : Boolean
      {
         return §26§("_Down");
      }
      
      public static function §`&§() : Boolean
      {
         return §26§("_Up");
      }
      
      private static function §26§(param1:String) : Boolean
      {
         if(!§]Y§ || §2h§.length < 1 || !§=!h§)
         {
            return false;
         }
         var _loc2_:Sprite = §]Y§.getChildByName(§2h§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§2h§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§2h§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§`f§)
         {
            return §#z§;
         }
         §#z§ = new Sprite();
         §`f§ = true;
         return §#z§;
      }
      
      public static function § !I§(param1:Number, param2:Number) : void
      {
         if(!§`f§ || !§]Y§ || !§]Y§.visible)
         {
            return;
         }
         §#z§.x = param1;
         §#z§.y = param2;
      }
      
      public static function §;!i§() : void
      {
         if(§]Y§)
         {
            if(§]Y§.visible)
            {
               §&!Q§ = §2h§;
            }
            §=T§("");
         }
      }
      
      public static function §<!e§() : void
      {
         if(§]Y§)
         {
            if(!§]Y§.visible)
            {
               §=T§(§&!Q§);
            }
         }
      }
   }
}
