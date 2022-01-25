package §8!$§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §?p§
   {
      
      public static const §0F§:Boolean = true;
      
      public static const §+!j§:Boolean = true;
      
      public static const §;A§:int = 0;
      
      public static const §^",§:int = 1;
      
      public static const §`^§:int = 500;
      
      private static var §!!O§:Array = null;
      
      private static var §!"+§:Number = 0;
      
      public static var §!!>§:int = Keyboard.F1;
      
      public static var §=o§:int = Keyboard.F3;
      
      public static var §#!!§:int = Keyboard.F2;
      
      public static var §>"&§:int = Keyboard.F4;
      
      public static var §6!Z§:Boolean = false;
      
      public static var § get§:Sprite = null;
      
      private static var §&!1§:TextField = null;
      
      private static var §!!F§:TextField = null;
      
      private static var §6F§:TextField = null;
      
      private static var §[!C§:TextField = null;
      
      public static var §7z§:int = -1;
      
      public static var §"!'§:String = "version: Unknown";
      
      public static var §'![§:String = "";
      
      {
         init();
      }
      
      public function §?p§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§0F§)
         {
            return;
         }
         §!!O§ = new Array(§`^§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§0F§)
         {
            _loc3_ = §!"+§++ % §`^§;
            §!!O§[_loc3_] = [param1,param2];
            if(param2 == §7z§ || §7z§ < 0)
            {
               §,!'§();
            }
         }
         if(§+!j§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §+"6§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §,!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§0F§)
         {
            return;
         }
         if(§ get§ && § get§.visible)
         {
            if(§7z§ < 0)
            {
               §6F§.text = "Current channel: ALL";
            }
            else
            {
               §6F§.text = "Current channel: " + §7z§;
            }
            if(§"!'§ != null)
            {
               §[!C§.text = §"!'§;
            }
            _loc1_ = true;
            if(§&!1§.scrollV != §&!1§.numLines - int(§&!1§.height / (§&!1§.textHeight / §&!1§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §`^§)
            {
               _loc4_ = (§!"+§ + _loc3_ + 1) % 500;
               if(§!!O§[_loc4_] != null)
               {
                  if(§7z§ < 0 || §!!O§[_loc4_][1] == §7z§)
                  {
                     _loc2_ += §!!O§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §&!1§.text = _loc2_;
            if(_loc1_)
            {
               §&!1§.scrollV = §&!1§.numLines;
            }
         }
      }
      
      public static function §3!4§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§0F§)
         {
            return;
         }
         § get§ = new Sprite();
         § get§.visible = false;
         param1.addChild(§ get§);
         var _loc7_:Graphics;
         (_loc7_ = § get§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §&!1§ = new TextField();
         §&!1§.width = param4;
         §&!1§.height = param5 - 40;
         §&!1§.x = param2;
         §&!1§.y = param3 + 40;
         §&!1§.wordWrap = true;
         § get§.addChild(§&!1§);
         §!!F§ = new TextField();
         §!!F§.x = param2 + param4 / 2;
         §!!F§.y = param3;
         §!!F§.width = param4 / 2;
         §!!F§.height = 20;
         §!!F§.text = "LOGGER CAPTURING INPUT, F4";
         §!!F§.border = true;
         §!!F§.borderColor = 16711680;
         § get§.addChild(§!!F§);
         §6F§ = new TextField();
         §6F§.width = param4;
         §6F§.height = 20;
         §6F§.x = param2;
         §6F§.y = param3;
         § get§.addChild(§6F§);
         §[!C§ = new TextField();
         §[!C§.width = param4;
         §[!C§.height = 20;
         §[!C§.x = param2;
         §[!C§.y = param3 + 20;
         § get§.addChild(§[!C§);
         §6<§(§6!Z§);
         if(param6 >= 0)
         {
            param1.addChildAt(§ get§,param6);
         }
         else
         {
            param1.addChild(§ get§);
         }
      }
      
      public static function §6<§(param1:Boolean) : void
      {
         if(!§0F§)
         {
            return;
         }
         §6!Z§ = param1;
         § get§.mouseChildren = §6!Z§;
         § get§.mouseEnabled = §6!Z§;
         §6F§.mouseEnabled = §6!Z§;
         §[!C§.mouseEnabled = §6!Z§;
         §&!1§.mouseEnabled = §6!Z§;
         §!!F§.visible = §6!Z§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§0F§)
         {
            return;
         }
      }
      
      public static function §&!8§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §!!>§ = param1;
         §#!!§ = param2;
         §=o§ = param3;
      }
      
      public static function §?0§(param1:String) : void
      {
         §"!'§ = param1;
      }
   }
}
