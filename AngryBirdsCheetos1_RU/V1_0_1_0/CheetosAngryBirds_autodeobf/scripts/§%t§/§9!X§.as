package §%t§
{
   import §<K§.§0e§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §9!X§ extends Sprite
   {
      
      private static var §1'§:Boolean = false;
      
      private static const §&W§:String = "Mouse_Cursors";
      
      private static var §'M§:Sprite;
      
      private static var §&B§:MovieClip;
      
      private static var §=8§:String;
      
      private static var §[%§:String = "";
      
      private static var §"E§:Boolean = false;
       
      
      public function §9!X§()
      {
         super();
      }
      
      public static function §"R§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§=8§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §=8§ = "";
         §"E§ = false;
         if(!§1'§ || !§&B§)
         {
            if(!§[!0§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §&B§.numChildren)
         {
            §&B§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §&B§.getChildByName(param1) as Sprite))
         {
            §&B§.visible = false;
            Mouse.show();
            return false;
         }
         §=8§ = param1;
         §&B§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§=8§ + "_Up"))
         {
            §"E§ = true;
         }
         if(§"E§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§=8§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §[!0§() : Boolean
      {
         var _loc1_:Class = §0e§.§#!!§(§&W§);
         §&B§ = new _loc1_();
         if(§&B§)
         {
            §'M§.addChild(§&B§);
            §'M§.mouseChildren = false;
            §&B§.mouseEnabled = false;
            §'M§.mouseEnabled = false;
            §&B§.enabled = false;
            §&B§.cacheAsBitmap = true;
         }
         return §&B§ != null;
      }
      
      public static function §[y§() : Boolean
      {
         return §>!0§("_Down");
      }
      
      public static function §3N§() : Boolean
      {
         return §>!0§("_Up");
      }
      
      private static function §>!0§(param1:String) : Boolean
      {
         if(!§&B§ || §=8§.length < 1 || !§"E§)
         {
            return false;
         }
         var _loc2_:Sprite = §&B§.getChildByName(§=8§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§=8§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§=8§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§1'§)
         {
            return §'M§;
         }
         §'M§ = new Sprite();
         §1'§ = true;
         return §'M§;
      }
      
      public static function §-!8§(param1:Number, param2:Number) : void
      {
         if(!§1'§ || !§&B§ || !§&B§.visible)
         {
            return;
         }
         §'M§.x = param1;
         §'M§.y = param2;
      }
      
      public static function §;j§() : void
      {
         if(§&B§)
         {
            if(§&B§.visible)
            {
               §[%§ = §=8§;
            }
            §"R§("");
         }
      }
      
      public static function §'7§() : void
      {
         if(§&B§)
         {
            if(!§&B§.visible)
            {
               §"R§(§[%§);
            }
         }
      }
   }
}
