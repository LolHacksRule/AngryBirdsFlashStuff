package §0N§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §2!@§
   {
      
      public static const §'!b§:Boolean = true;
      
      public static const §`2§:Boolean = true;
      
      public static const §]!G§:int = 0;
      
      public static const §;"=§:int = 1;
      
      public static const §0u§:int = 500;
      
      private static var §^!H§:Array = null;
      
      private static var §6"E§:Number = 0;
      
      public static var §[!+§:int = Keyboard.F1;
      
      public static var §'!>§:int = Keyboard.F3;
      
      public static var §]!7§:int = Keyboard.F2;
      
      public static var §7!"§:int = Keyboard.F4;
      
      public static var §^!w§:Boolean = false;
      
      public static var §["$§:Sprite = null;
      
      private static var §,W§:TextField = null;
      
      private static var §+?§:TextField = null;
      
      private static var §>"1§:TextField = null;
      
      private static var §%!§:TextField = null;
      
      public static var §#H§:int = -1;
      
      public static var §'!S§:String = "version: Unknown";
      
      public static var §>C§:String = "";
      
      {
         init();
      }
      
      public function §2!@§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§'!b§)
         {
            return;
         }
         §^!H§ = new Array(§0u§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§'!b§)
         {
            _loc3_ = §6"E§++ % §0u§;
            §^!H§[_loc3_] = [param1,param2];
            if(param2 == §#H§ || §#H§ < 0)
            {
               §#!p§();
            }
         }
         if(§`2§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §-!h§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §#!p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§'!b§)
         {
            return;
         }
         if(§["$§ && §["$§.visible)
         {
            if(§#H§ < 0)
            {
               §>"1§.text = "Current channel: ALL";
            }
            else
            {
               §>"1§.text = "Current channel: " + §#H§;
            }
            if(§'!S§ != null)
            {
               §%!§.text = §'!S§;
            }
            _loc1_ = true;
            if(§,W§.scrollV != §,W§.numLines - int(§,W§.height / (§,W§.textHeight / §,W§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §0u§)
            {
               _loc4_ = (§6"E§ + _loc3_ + 1) % 500;
               if(§^!H§[_loc4_] != null)
               {
                  if(§#H§ < 0 || §^!H§[_loc4_][1] == §#H§)
                  {
                     _loc2_ += §^!H§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §,W§.text = _loc2_;
            if(_loc1_)
            {
               §,W§.scrollV = §,W§.numLines;
            }
         }
      }
      
      public static function §0!t§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§'!b§)
         {
            return;
         }
         §["$§ = new Sprite();
         §["$§.visible = false;
         param1.addChild(§["$§);
         var _loc7_:Graphics;
         (_loc7_ = §["$§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §,W§ = new TextField();
         §,W§.width = param4;
         §,W§.height = param5 - 40;
         §,W§.x = param2;
         §,W§.y = param3 + 40;
         §,W§.wordWrap = true;
         §["$§.addChild(§,W§);
         §+?§ = new TextField();
         §+?§.x = param2 + param4 / 2;
         §+?§.y = param3;
         §+?§.width = param4 / 2;
         §+?§.height = 20;
         §+?§.text = "LOGGER CAPTURING INPUT, F4";
         §+?§.border = true;
         §+?§.borderColor = 16711680;
         §["$§.addChild(§+?§);
         §>"1§ = new TextField();
         §>"1§.width = param4;
         §>"1§.height = 20;
         §>"1§.x = param2;
         §>"1§.y = param3;
         §["$§.addChild(§>"1§);
         §%!§ = new TextField();
         §%!§.width = param4;
         §%!§.height = 20;
         §%!§.x = param2;
         §%!§.y = param3 + 20;
         §["$§.addChild(§%!§);
         §]W§(§^!w§);
         if(param6 >= 0)
         {
            param1.addChildAt(§["$§,param6);
         }
         else
         {
            param1.addChild(§["$§);
         }
      }
      
      public static function §]W§(param1:Boolean) : void
      {
         if(!§'!b§)
         {
            return;
         }
         §^!w§ = param1;
         §["$§.mouseChildren = §^!w§;
         §["$§.mouseEnabled = §^!w§;
         §>"1§.mouseEnabled = §^!w§;
         §%!§.mouseEnabled = §^!w§;
         §,W§.mouseEnabled = §^!w§;
         §+?§.visible = §^!w§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§'!b§)
         {
            return;
         }
      }
      
      public static function §3!-§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §[!+§ = param1;
         §]!7§ = param2;
         §'!>§ = param3;
      }
      
      public static function § G§(param1:String) : void
      {
         §'!S§ = param1;
      }
   }
}
