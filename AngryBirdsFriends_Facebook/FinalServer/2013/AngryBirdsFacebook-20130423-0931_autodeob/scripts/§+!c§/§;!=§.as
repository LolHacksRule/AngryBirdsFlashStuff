package §+!c§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §;!=§
   {
      
      public static const §<"B§:Boolean = true;
      
      public static const §>!X§:Boolean = true;
      
      public static const § M§:int = 0;
      
      public static const §8"W§:int = 1;
      
      public static const §8!Q§:int = 500;
      
      private static var §8"T§:Array = null;
      
      private static var §["%§:Number = 0;
      
      public static var §5"N§:int = Keyboard.F1;
      
      public static var §&!%§:int = Keyboard.F3;
      
      public static var §&#§:int = Keyboard.F2;
      
      public static var §%4§:int = Keyboard.F4;
      
      public static var § !8§:Boolean = false;
      
      public static var §?9§:Sprite = null;
      
      private static var §;+§:TextField = null;
      
      private static var §%!1§:TextField = null;
      
      private static var §<!Z§:TextField = null;
      
      private static var §+`§:TextField = null;
      
      public static var §>!H§:int = -1;
      
      public static var §5W§:String = "version: Unknown";
      
      public static var §]!_§:String = "";
      
      {
         init();
      }
      
      public function §;!=§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§<"B§)
         {
            return;
         }
         §8"T§ = new Array(§8!Q§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§<"B§)
         {
            _loc3_ = §["%§++ % §8!Q§;
            §8"T§[_loc3_] = [param1,param2];
            if(param2 == §>!H§ || §>!H§ < 0)
            {
               §""-§();
            }
         }
         if(§>!X§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §3!§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §""-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§<"B§)
         {
            return;
         }
         if(§?9§ && §?9§.visible)
         {
            if(§>!H§ < 0)
            {
               §<!Z§.text = "Current channel: ALL";
            }
            else
            {
               §<!Z§.text = "Current channel: " + §>!H§;
            }
            if(§5W§ != null)
            {
               §+`§.text = §5W§;
            }
            _loc1_ = true;
            if(§;+§.scrollV != §;+§.numLines - int(§;+§.height / (§;+§.textHeight / §;+§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §8!Q§)
            {
               _loc4_ = (§["%§ + _loc3_ + 1) % 500;
               if(§8"T§[_loc4_] != null)
               {
                  if(§>!H§ < 0 || §8"T§[_loc4_][1] == §>!H§)
                  {
                     _loc2_ += §8"T§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §;+§.text = _loc2_;
            if(_loc1_)
            {
               §;+§.scrollV = §;+§.numLines;
            }
         }
      }
      
      public static function §"y§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§<"B§)
         {
            return;
         }
         §?9§ = new Sprite();
         §?9§.visible = false;
         param1.addChild(§?9§);
         var _loc7_:Graphics;
         (_loc7_ = §?9§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §;+§ = new TextField();
         §;+§.width = param4;
         §;+§.height = param5 - 40;
         §;+§.x = param2;
         §;+§.y = param3 + 40;
         §;+§.wordWrap = true;
         §?9§.addChild(§;+§);
         §%!1§ = new TextField();
         §%!1§.x = param2 + param4 / 2;
         §%!1§.y = param3;
         §%!1§.width = param4 / 2;
         §%!1§.height = 20;
         §%!1§.text = "LOGGER CAPTURING INPUT, F4";
         §%!1§.border = true;
         §%!1§.borderColor = 16711680;
         §?9§.addChild(§%!1§);
         §<!Z§ = new TextField();
         §<!Z§.width = param4;
         §<!Z§.height = 20;
         §<!Z§.x = param2;
         §<!Z§.y = param3;
         §?9§.addChild(§<!Z§);
         §+`§ = new TextField();
         §+`§.width = param4;
         §+`§.height = 20;
         §+`§.x = param2;
         §+`§.y = param3 + 20;
         §?9§.addChild(§+`§);
         §>!C§(§ !8§);
         if(param6 >= 0)
         {
            param1.addChildAt(§?9§,param6);
         }
         else
         {
            param1.addChild(§?9§);
         }
      }
      
      public static function §>!C§(param1:Boolean) : void
      {
         if(!§<"B§)
         {
            return;
         }
         § !8§ = param1;
         §?9§.mouseChildren = § !8§;
         §?9§.mouseEnabled = § !8§;
         §<!Z§.mouseEnabled = § !8§;
         §+`§.mouseEnabled = § !8§;
         §;+§.mouseEnabled = § !8§;
         §%!1§.visible = § !8§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§<"B§)
         {
            return;
         }
      }
      
      public static function §'!x§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §5"N§ = param1;
         §&#§ = param2;
         §&!%§ = param3;
      }
      
      public static function §;"J§(param1:String) : void
      {
         §5W§ = param1;
      }
   }
}
