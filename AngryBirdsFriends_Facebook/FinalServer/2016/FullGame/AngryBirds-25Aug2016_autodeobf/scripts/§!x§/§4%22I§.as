package §!x§
{
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §4"I§ extends Sprite
   {
      
      private static var §7J§:Boolean = false;
      
      private static const §<U§:String = "Mouse_Cursors";
      
      private static var §;!u§:Sprite;
      
      private static var §8#L§:MovieClip;
      
      private static var §0#r§:String;
      
      private static var §?!^§:String = "";
      
      private static var §7"g§:Boolean = false;
       
      
      public function §4"I§()
      {
         super();
      }
      
      public static function §;!f§(param1:String) : Boolean
      {
         if(§0#r§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §0#r§ = "";
         §7"g§ = false;
         if(!§7J§ || !§8#L§)
         {
            if(!§8#u§())
            {
               Mouse.show();
               return false;
            }
         }
         var _loc3_:int = 0;
         while(_loc3_ < §8#L§.numChildren)
         {
            §8#L§.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         var _loc4_:Sprite;
         if(!(_loc4_ = §8#L§.getChildByName(param1) as Sprite))
         {
            §8#L§.visible = false;
            Mouse.show();
            return false;
         }
         §0#r§ = param1;
         §8#L§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§0#r§ + "_Up"))
         {
            §7"g§ = true;
         }
         if(§7"g§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§0#r§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §8#u§() : Boolean
      {
         var _loc1_:Class = §@`§.§4!i§(§<U§);
         §8#L§ = new _loc1_();
         if(§8#L§)
         {
            §;!u§.addChild(§8#L§);
            §;!u§.mouseChildren = false;
            §8#L§.mouseEnabled = false;
            §;!u§.mouseEnabled = false;
            §8#L§.enabled = false;
            §8#L§.cacheAsBitmap = true;
         }
         return §8#L§ != null;
      }
      
      public static function §###§() : Boolean
      {
         return §]2§("_Down");
      }
      
      public static function §@#u§() : Boolean
      {
         return §]2§("_Up");
      }
      
      private static function §]2§(param1:String) : Boolean
      {
         if(!§8#L§ || §0#r§.length < 1 || !§7"g§)
         {
            return false;
         }
         var _loc2_:Sprite = §8#L§.getChildByName(§0#r§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§0#r§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§0#r§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§7J§)
         {
            return §;!u§;
         }
         §;!u§ = new Sprite();
         §7J§ = true;
         return §;!u§;
      }
      
      public static function §=F§(param1:Number, param2:Number) : void
      {
         if(!§7J§ || !§8#L§ || !§8#L§.visible)
         {
            return;
         }
         §;!u§.x = param1;
         §;!u§.y = param2;
      }
      
      public static function §2!j§() : void
      {
         if(§8#L§)
         {
            if(§8#L§.visible)
            {
               §?!^§ = §0#r§;
            }
            §;!f§("");
         }
      }
      
      public static function §#A§() : void
      {
         if(§8#L§)
         {
            if(!§8#L§.visible)
            {
               §;!f§(§?!^§);
            }
         }
      }
   }
}
