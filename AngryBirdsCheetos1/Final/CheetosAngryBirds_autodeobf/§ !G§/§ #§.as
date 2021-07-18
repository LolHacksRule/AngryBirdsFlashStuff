package § !G§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class § #§
   {
      
      public static const §;!V§:Boolean = true;
      
      public static const § ^§:Boolean = true;
      
      public static const §2!E§:int = 0;
      
      public static const §#!W§:int = 1;
      
      public static const §+G§:int = 500;
      
      private static var §@!4§:Array = null;
      
      private static var §1!F§:Number = 0;
      
      public static var §@! §:int = Keyboard.F1;
      
      public static var §'1§:int = Keyboard.F3;
      
      public static var §>r§:int = Keyboard.F2;
      
      public static var §;!N§:int = Keyboard.F4;
      
      public static var §5!0§:Boolean = false;
      
      public static var §4&§:Sprite = null;
      
      private static var §if §:TextField = null;
      
      private static var §15§:TextField = null;
      
      private static var §%!S§:TextField = null;
      
      private static var §3y§:TextField = null;
      
      public static var §=[§:int = -1;
      
      public static var §[!N§:String = "version: Unknown";
      
      public static var §,i§:String = "";
      
      {
         init();
      }
      
      public function § #§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§;!V§)
         {
            return;
         }
         §@!4§ = new Array(§+G§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§;!V§)
         {
            _loc3_ = §1!F§++ % §+G§;
            §@!4§[_loc3_] = [param1,param2];
            if(param2 == §=[§ || §=[§ < 0)
            {
               §&!>§();
            }
         }
         if(§ ^§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §"!S§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §&!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§;!V§)
         {
            return;
         }
         if(§4&§ && §4&§.visible)
         {
            if(§=[§ < 0)
            {
               §%!S§.text = "Current channel: ALL";
            }
            else
            {
               §%!S§.text = "Current channel: " + §=[§;
            }
            if(§[!N§ != null)
            {
               §3y§.text = §[!N§;
            }
            _loc1_ = true;
            if(§if §.scrollV != §if §.numLines - int(§if §.height / (§if §.textHeight / §if §.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §+G§)
            {
               _loc4_ = (§1!F§ + _loc3_ + 1) % 500;
               if(§@!4§[_loc4_] != null)
               {
                  if(§=[§ < 0 || §@!4§[_loc4_][1] == §=[§)
                  {
                     _loc2_ += §@!4§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §if §.text = _loc2_;
            if(_loc1_)
            {
               §if §.scrollV = §if §.numLines;
            }
         }
      }
      
      public static function §=J§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§;!V§)
         {
            return;
         }
         §4&§ = new Sprite();
         §4&§.visible = false;
         param1.addChild(§4&§);
         var _loc7_:Graphics;
         (_loc7_ = §4&§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §if § = new TextField();
         §if §.width = param4;
         §if §.height = param5 - 40;
         §if §.x = param2;
         §if §.y = param3 + 40;
         §if §.wordWrap = true;
         §4&§.addChild(§if §);
         §15§ = new TextField();
         §15§.x = param2 + param4 / 2;
         §15§.y = param3;
         §15§.width = param4 / 2;
         §15§.height = 20;
         §15§.text = "LOGGER CAPTURING INPUT, F4";
         §15§.border = true;
         §15§.borderColor = 16711680;
         §4&§.addChild(§15§);
         §%!S§ = new TextField();
         §%!S§.width = param4;
         §%!S§.height = 20;
         §%!S§.x = param2;
         §%!S§.y = param3;
         §4&§.addChild(§%!S§);
         §3y§ = new TextField();
         §3y§.width = param4;
         §3y§.height = 20;
         §3y§.x = param2;
         §3y§.y = param3 + 20;
         §4&§.addChild(§3y§);
         §&!#§(§5!0§);
         if(param6 >= 0)
         {
            param1.addChildAt(§4&§,param6);
         }
         else
         {
            param1.addChild(§4&§);
         }
      }
      
      public static function §&!#§(param1:Boolean) : void
      {
         if(!§;!V§)
         {
            return;
         }
         §5!0§ = param1;
         §4&§.mouseChildren = §5!0§;
         §4&§.mouseEnabled = §5!0§;
         §%!S§.mouseEnabled = §5!0§;
         §3y§.mouseEnabled = §5!0§;
         §if §.mouseEnabled = §5!0§;
         §15§.visible = §5!0§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§;!V§)
         {
            return;
         }
      }
      
      public static function §7`§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §@! § = param1;
         §>r§ = param2;
         §'1§ = param3;
      }
      
      public static function §8R§(param1:String) : void
      {
         §[!N§ = param1;
      }
   }
}
