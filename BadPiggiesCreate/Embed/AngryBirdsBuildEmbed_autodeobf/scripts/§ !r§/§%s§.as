package § !r§
{
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §%s§ extends Sprite
   {
      
      private static var § !f§:Boolean = false;
      
      private static const §^w§:String = "Mouse_Cursors";
      
      private static var §5!"§:Sprite;
      
      private static var §=K§:MovieClip;
      
      private static var §"q§:String;
      
      private static var §4!A§:String = "";
      
      private static var §]!R§:Boolean = false;
       
      
      public function §%s§()
      {
         super();
      }
      
      public static function § do§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§"q§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §"q§ = "";
         §]!R§ = false;
         if(!§ !f§ || !§=K§)
         {
            if(!§^!@§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §=K§.numChildren)
         {
            §=K§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §=K§.getChildByName(param1) as Sprite))
         {
            §=K§.visible = false;
            Mouse.show();
            return false;
         }
         §"q§ = param1;
         §=K§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§"q§ + "_Up"))
         {
            §]!R§ = true;
         }
         if(§]!R§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§"q§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §^!@§() : Boolean
      {
         var _loc1_:Class = §1F§.§"!_§(§^w§);
         §=K§ = new _loc1_();
         if(§=K§)
         {
            §5!"§.addChild(§=K§);
            §5!"§.mouseChildren = false;
            §=K§.mouseEnabled = false;
            §5!"§.mouseEnabled = false;
            §=K§.enabled = false;
            §=K§.cacheAsBitmap = true;
         }
         return §=K§ != null;
      }
      
      public static function §[!@§() : Boolean
      {
         return §^l§("_Down");
      }
      
      public static function §<1§() : Boolean
      {
         return §^l§("_Up");
      }
      
      private static function §^l§(param1:String) : Boolean
      {
         if(!§=K§ || §"q§.length < 1 || !§]!R§)
         {
            return false;
         }
         var _loc2_:Sprite = §=K§.getChildByName(§"q§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§"q§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§"q§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§ !f§)
         {
            return §5!"§;
         }
         §5!"§ = new Sprite();
         § !f§ = true;
         return §5!"§;
      }
      
      public static function §6!!§(param1:Number, param2:Number) : void
      {
         if(!§ !f§ || !§=K§ || !§=K§.visible)
         {
            return;
         }
         §5!"§.x = param1;
         §5!"§.y = param2;
      }
      
      public static function §9g§() : void
      {
         if(§=K§)
         {
            if(§=K§.visible)
            {
               §4!A§ = §"q§;
            }
            § do§("");
         }
      }
      
      public static function §,5§() : void
      {
         if(§=K§)
         {
            if(!§=K§.visible)
            {
               § do§(§4!A§);
            }
         }
      }
   }
}
