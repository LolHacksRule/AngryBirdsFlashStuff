package § N§
{
   import §,&§.§7$§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §;]§ extends Sprite
   {
      
      private static var §"n§:Boolean = false;
      
      private static const §'!7§:String = "Mouse_Cursors";
      
      private static var §`q§:Sprite;
      
      private static var §><§:MovieClip;
      
      private static var §!m§:String;
      
      private static var §`O§:String = "";
      
      private static var §8^§:Boolean = false;
       
      
      public function §;]§()
      {
         super();
      }
      
      public static function §3w§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§!m§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §!m§ = "";
         §8^§ = false;
         if(!§"n§ || !§><§)
         {
            if(!§5§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §><§.numChildren)
         {
            §><§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §><§.getChildByName(param1) as Sprite))
         {
            §><§.visible = false;
            Mouse.show();
            return false;
         }
         §!m§ = param1;
         §><§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§!m§ + "_Up"))
         {
            §8^§ = true;
         }
         if(§8^§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§!m§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §5§() : Boolean
      {
         var _loc1_:Class = §7$§.§,W§(§'!7§);
         §><§ = new _loc1_();
         if(§><§)
         {
            §`q§.addChild(§><§);
            §`q§.mouseChildren = false;
            §><§.mouseEnabled = false;
            §`q§.mouseEnabled = false;
            §><§.enabled = false;
            §><§.cacheAsBitmap = true;
         }
         return §><§ != null;
      }
      
      public static function §>]§() : Boolean
      {
         return §;!]§("_Down");
      }
      
      public static function §8!S§() : Boolean
      {
         return §;!]§("_Up");
      }
      
      private static function §;!]§(param1:String) : Boolean
      {
         if(!§><§ || §!m§.length < 1 || !§8^§)
         {
            return false;
         }
         var _loc2_:Sprite = §><§.getChildByName(§!m§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§!m§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§!m§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§"n§)
         {
            return §`q§;
         }
         §`q§ = new Sprite();
         §"n§ = true;
         return §`q§;
      }
      
      public static function §=;§(param1:Number, param2:Number) : void
      {
         if(!§"n§ || !§><§ || !§><§.visible)
         {
            return;
         }
         §`q§.x = param1;
         §`q§.y = param2;
      }
      
      public static function §&[§() : void
      {
         if(§><§)
         {
            if(§><§.visible)
            {
               §`O§ = §!m§;
            }
            §3w§("");
         }
      }
      
      public static function §?!T§() : void
      {
         if(§><§)
         {
            if(!§><§.visible)
            {
               §3w§(§`O§);
            }
         }
      }
   }
}
