package §6]§
{
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §8!W§ extends Sprite
   {
      
      private static var §!"6§:Boolean = false;
      
      private static const §9]§:String = "Mouse_Cursors";
      
      private static var §]<§:Sprite;
      
      private static var §@"1§:MovieClip;
      
      private static var §%2§:String;
      
      private static var §6!@§:String = "";
      
      private static var §;4§:Boolean = false;
       
      
      public function §8!W§()
      {
         super();
      }
      
      public static function §9i§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§%2§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §%2§ = "";
         §;4§ = false;
         if(!§!"6§ || !§@"1§)
         {
            if(!§@E§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §@"1§.numChildren)
         {
            §@"1§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §@"1§.getChildByName(param1) as Sprite))
         {
            §@"1§.visible = false;
            Mouse.show();
            return false;
         }
         §%2§ = param1;
         §@"1§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§%2§ + "_Up"))
         {
            §;4§ = true;
         }
         if(§;4§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§%2§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §@E§() : Boolean
      {
         var _loc1_:Class = §69§.§ 0§(§9]§);
         §@"1§ = new _loc1_();
         if(§@"1§)
         {
            §]<§.addChild(§@"1§);
            §]<§.mouseChildren = false;
            §@"1§.mouseEnabled = false;
            §]<§.mouseEnabled = false;
            §@"1§.enabled = false;
            §@"1§.cacheAsBitmap = true;
         }
         return §@"1§ != null;
      }
      
      public static function §for§() : Boolean
      {
         return §0!#§("_Down");
      }
      
      public static function §^!R§() : Boolean
      {
         return §0!#§("_Up");
      }
      
      private static function §0!#§(param1:String) : Boolean
      {
         if(!§@"1§ || §%2§.length < 1 || !§;4§)
         {
            return false;
         }
         var _loc2_:Sprite = §@"1§.getChildByName(§%2§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§%2§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§%2§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§!"6§)
         {
            return §]<§;
         }
         §]<§ = new Sprite();
         §!"6§ = true;
         return §]<§;
      }
      
      public static function §;M§(param1:Number, param2:Number) : void
      {
         if(!§!"6§ || !§@"1§ || !§@"1§.visible)
         {
            return;
         }
         §]<§.x = param1;
         §]<§.y = param2;
      }
      
      public static function §?!G§() : void
      {
         if(§@"1§)
         {
            if(§@"1§.visible)
            {
               §6!@§ = §%2§;
            }
            §9i§("");
         }
      }
      
      public static function §1"'§() : void
      {
         if(§@"1§)
         {
            if(!§@"1§.visible)
            {
               §9i§(§6!@§);
            }
         }
      }
   }
}
