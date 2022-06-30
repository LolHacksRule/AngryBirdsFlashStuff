package §&!b§
{
   import §?v§.§&!h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §7!G§ extends Sprite
   {
      
      private static var §[!&§:Boolean = false;
      
      private static const §!`§:String = "Mouse_Cursors";
      
      private static var §9!K§:Sprite;
      
      private static var §<x§:MovieClip;
      
      private static var §]!<§:String;
      
      private static var §%J§:String = "";
      
      private static var §;=§:Boolean = false;
       
      
      public function §7!G§()
      {
         super();
      }
      
      public static function §0!Y§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§]!<§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §]!<§ = "";
         §;=§ = false;
         if(!§[!&§ || !§<x§)
         {
            if(!§@!?§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §<x§.numChildren)
         {
            §<x§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §<x§.getChildByName(param1) as Sprite))
         {
            §<x§.visible = false;
            Mouse.show();
            return false;
         }
         §]!<§ = param1;
         §<x§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§]!<§ + "_Up"))
         {
            §;=§ = true;
         }
         if(§;=§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§]!<§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §@!?§() : Boolean
      {
         var _loc1_:Class = §&!h§.§#Q§(§!`§);
         §<x§ = new _loc1_();
         if(§<x§)
         {
            §9!K§.addChild(§<x§);
            §9!K§.mouseChildren = false;
            §<x§.mouseEnabled = false;
            §9!K§.mouseEnabled = false;
            §<x§.enabled = false;
            §<x§.cacheAsBitmap = true;
         }
         return §<x§ != null;
      }
      
      public static function §^o§() : Boolean
      {
         return §&E§("_Down");
      }
      
      public static function §`!b§() : Boolean
      {
         return §&E§("_Up");
      }
      
      private static function §&E§(param1:String) : Boolean
      {
         if(!§<x§ || §]!<§.length < 1 || !§;=§)
         {
            return false;
         }
         var _loc2_:Sprite = §<x§.getChildByName(§]!<§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§]!<§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§]!<§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§[!&§)
         {
            return §9!K§;
         }
         §9!K§ = new Sprite();
         §[!&§ = true;
         return §9!K§;
      }
      
      public static function §6T§(param1:Number, param2:Number) : void
      {
         if(!§[!&§ || !§<x§ || !§<x§.visible)
         {
            return;
         }
         §9!K§.x = param1;
         §9!K§.y = param2;
      }
      
      public static function §]-§() : void
      {
         if(§<x§)
         {
            if(§<x§.visible)
            {
               §%J§ = §]!<§;
            }
            §0!Y§("");
         }
      }
      
      public static function §1!Y§() : void
      {
         if(§<x§)
         {
            if(!§<x§.visible)
            {
               §0!Y§(§%J§);
            }
         }
      }
   }
}
