package §0i§
{
   import §<l§.§@0§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.ui.Mouse;
   
   public class §6`§ extends Sprite
   {
      
      private static var §-V§:Boolean = false;
      
      private static const §[2§:String = "Mouse_Cursors";
      
      private static var §";§:Sprite;
      
      private static var §&B§:MovieClip;
      
      private static var §86§:String;
      
      private static var §9!7§:String = "";
      
      private static var §=7§:Boolean = false;
       
      
      public function §6`§()
      {
         super();
      }
      
      public static function §2>§(param1:String) : Boolean
      {
         var _loc4_:Sprite = null;
         if(§86§ == param1)
         {
            return true;
         }
         var _loc2_:Boolean = false;
         §86§ = "";
         §=7§ = false;
         if(!§-V§ || !§&B§)
         {
            if(!§1!O§())
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
         §86§ = param1;
         §&B§.visible = true;
         _loc4_.visible = true;
         _loc2_ = true;
         Mouse.hide();
         if(_loc4_.numChildren > 1 && _loc4_.getChildByName(§86§ + "_Up"))
         {
            §=7§ = true;
         }
         if(§=7§)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc4_.numChildren)
            {
               _loc4_.getChildAt(_loc3_).visible = false;
               _loc3_++;
            }
            _loc4_.getChildByName(§86§ + "_Up").visible = true;
         }
         return _loc2_;
      }
      
      private static function §1!O§() : Boolean
      {
         var _loc1_:Class = §@0§.§5+§(§[2§);
         §&B§ = new _loc1_();
         if(§&B§)
         {
            §";§.addChild(§&B§);
            §";§.mouseChildren = false;
            §&B§.mouseEnabled = false;
            §";§.mouseEnabled = false;
            §&B§.enabled = false;
            §&B§.cacheAsBitmap = true;
         }
         return §&B§ != null;
      }
      
      public static function §2!I§() : Boolean
      {
         return §%&§("_Down");
      }
      
      public static function §7@§() : Boolean
      {
         return §%&§("_Up");
      }
      
      private static function §%&§(param1:String) : Boolean
      {
         if(!§&B§ || §86§.length < 1 || !§=7§)
         {
            return false;
         }
         var _loc2_:Sprite = §&B§.getChildByName(§86§) as Sprite;
         if(!_loc2_ || !_loc2_.getChildByName(§86§ + param1))
         {
            return false;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.numChildren)
         {
            _loc2_.getChildAt(_loc3_).visible = false;
            _loc3_++;
         }
         _loc2_.getChildByName(§86§ + param1).visible = true;
         return true;
      }
      
      public static function activate() : Sprite
      {
         if(§-V§)
         {
            return §";§;
         }
         §";§ = new Sprite();
         §-V§ = true;
         return §";§;
      }
      
      public static function §%!@§(param1:Number, param2:Number) : void
      {
         if(!§-V§ || !§&B§ || !§&B§.visible)
         {
            return;
         }
         §";§.x = param1;
         §";§.y = param2;
      }
      
      public static function §[$§() : void
      {
         if(§&B§)
         {
            if(§&B§.visible)
            {
               §9!7§ = §86§;
            }
            §2>§("");
         }
      }
      
      public static function § [§() : void
      {
         if(§&B§)
         {
            if(!§&B§.visible)
            {
               §2>§(§9!7§);
            }
         }
      }
   }
}
