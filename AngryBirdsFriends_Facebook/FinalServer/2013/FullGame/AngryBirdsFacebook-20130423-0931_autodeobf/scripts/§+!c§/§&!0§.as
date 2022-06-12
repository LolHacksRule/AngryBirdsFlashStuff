package §+!c§
{
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §&!0§ extends Sprite
   {
      
      private static var §1x§:Boolean = false;
      
      private static const §6!k§:String = "Mouse_Cursors";
      
      private static var §<"3§:Sprite;
      
      private static var §9!<§:MovieClip;
      
      private static var §?d§:String;
      
      private static var §]!`§:String = "";
      
      private static var §9"-§:Boolean = false;
       
      
      public function §&!0§()
      {
         super();
      }
      
      public static function §6B§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§?d§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §?d§ = "";
         §9"-§ = false;
         if(!§1x§ || !§9!<§)
         {
            if(!§-"S§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §9!<§.numChildren)
         {
            §9!<§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         if(!(_loc4_ = §9!<§.getChildByName(param1) as Sprite))
         {
            §9!<§.visible = false;
            Mouse.show();
            return false;
         }
         §?d§ = param1;
         §9!<§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§?d§ + "_Up"))
         {
            §9"-§ = true;
         }
         if(§9"-§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§?d§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §-"S§() : Boolean
      {
         var _loc1_:Class = §?q§.§ q§(§6!k§);
         §9!<§ = new _loc1_();
         if(§9!<§)
         {
            §<"3§.addChild(§9!<§);
            §<"3§.mouseChildren = false;
            §9!<§.mouseEnabled = false;
            §<"3§.mouseEnabled = false;
            §9!<§.enabled = false;
            §9!<§.cacheAsBitmap = true;
         }
         return §9!<§ != null;
      }
      
      public static function §8!R§() : Boolean
      {
         return §+=§("_Down");
      }
      
      public static function §!4§() : Boolean
      {
         return §+=§("_Up");
      }
      
      private static function §+=§(param1:String) : Boolean
      {
         if(!§9!<§ || §?d§.length < 1 || !§9"-§)
         {
            return false;
         }
         var _loc2_:Sprite = §9!<§.getChildByName(§?d§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§?d§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§?d§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§1x§)
         {
            return §<"3§;
         }
         §<"3§ = new Sprite();
         §1x§ = true;
         return §<"3§;
      }
      
      public static function §%!E§(param1:Number, param2:Number) : void
      {
         if(!§1x§ || !§9!<§ || !§9!<§.visible)
         {
            return;
         }
         §<"3§.x = param1;
         §<"3§.y = param2;
      }
      
      public static function §!%§() : void
      {
         if(§9!<§)
         {
            if(§9!<§.visible)
            {
               §]!`§ = §?d§;
            }
            §6B§("");
         }
      }
      
      public static function §@!R§() : void
      {
         if(§9!<§)
         {
            if(!§9!<§.visible)
            {
               §6B§(§]!`§);
            }
         }
      }
   }
}
