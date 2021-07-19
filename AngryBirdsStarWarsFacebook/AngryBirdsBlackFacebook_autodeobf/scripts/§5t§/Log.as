package §5t§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class Log
   {
      
      public static const §0"i§:Boolean = true;
      
      public static const §!"§:Boolean = true;
      
      public static const §%#H§:int = 0;
      
      public static const §7#a§:int = 1;
      
      public static const §]Y§:int = 500;
      
      private static var §!"X§:Array = null;
      
      private static var §'#+§:Number = 0;
      
      public static var § #N§:int = Keyboard.F1;
      
      public static var §##-§:int = Keyboard.F3;
      
      public static var §^"=§:int = Keyboard.F2;
      
      public static var § #X§:int = Keyboard.F4;
      
      public static var §"#W§:Boolean = false;
      
      public static var §?!n§:Sprite = null;
      
      private static var §;#Y§:TextField = null;
      
      private static var §&"O§:TextField = null;
      
      private static var §21§:TextField = null;
      
      private static var § "'§:TextField = null;
      
      public static var §7"j§:int = -1;
      
      public static var §,#1§:String = "version: Unknown";
      
      public static var §<"a§:String = "";
      
      {
         init();
      }
      
      public function Log()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§0"i§)
         {
            return;
         }
         §!"X§ = new Array(§]Y§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§0"i§)
         {
            _loc3_ = §'#+§++ % §]Y§;
            §!"X§[_loc3_] = [param1,param2];
            if(param2 == §7"j§ || §7"j§ < 0)
            {
               §4!J§();
            }
         }
         if(§!"§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §9u§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §4!J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§0"i§)
         {
            return;
         }
         if(§?!n§ && §?!n§.visible)
         {
            if(§7"j§ < 0)
            {
               §21§.text = "Current channel: ALL";
            }
            else
            {
               §21§.text = "Current channel: " + §7"j§;
            }
            if(§,#1§ != null)
            {
               § "'§.text = §,#1§;
            }
            _loc1_ = true;
            if(§;#Y§.scrollV != §;#Y§.numLines - int(§;#Y§.height / (§;#Y§.textHeight / §;#Y§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §]Y§)
            {
               _loc4_ = (§'#+§ + _loc3_ + 1) % 500;
               if(§!"X§[_loc4_] != null)
               {
                  if(§7"j§ < 0 || §!"X§[_loc4_][1] == §7"j§)
                  {
                     _loc2_ += §!"X§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §;#Y§.text = _loc2_;
            if(_loc1_)
            {
               §;#Y§.scrollV = §;#Y§.numLines;
            }
         }
      }
      
      public static function §!"7§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§0"i§)
         {
            return;
         }
         §?!n§ = new Sprite();
         §?!n§.visible = false;
         param1.addChild(§?!n§);
         var _loc7_:Graphics;
         (_loc7_ = §?!n§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §;#Y§ = new TextField();
         §;#Y§.width = param4;
         §;#Y§.height = param5 - 40;
         §;#Y§.x = param2;
         §;#Y§.y = param3 + 40;
         §;#Y§.wordWrap = true;
         §?!n§.addChild(§;#Y§);
         §&"O§ = new TextField();
         §&"O§.x = param2 + param4 / 2;
         §&"O§.y = param3;
         §&"O§.width = param4 / 2;
         §&"O§.height = 20;
         §&"O§.text = "LOGGER CAPTURING INPUT, F4";
         §&"O§.border = true;
         §&"O§.borderColor = 16711680;
         §?!n§.addChild(§&"O§);
         §21§ = new TextField();
         §21§.width = param4;
         §21§.height = 20;
         §21§.x = param2;
         §21§.y = param3;
         §?!n§.addChild(§21§);
         § "'§ = new TextField();
         § "'§.width = param4;
         § "'§.height = 20;
         § "'§.x = param2;
         § "'§.y = param3 + 20;
         §?!n§.addChild(§ "'§);
         §6"<§(§"#W§);
         if(param6 >= 0)
         {
            param1.addChildAt(§?!n§,param6);
         }
         else
         {
            param1.addChild(§?!n§);
         }
      }
      
      public static function §6"<§(param1:Boolean) : void
      {
         if(!§0"i§)
         {
            return;
         }
         §"#W§ = param1;
         §?!n§.mouseChildren = §"#W§;
         §?!n§.mouseEnabled = §"#W§;
         §21§.mouseEnabled = §"#W§;
         § "'§.mouseEnabled = §"#W§;
         §;#Y§.mouseEnabled = §"#W§;
         §&"O§.visible = §"#W§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§0"i§)
         {
            return;
         }
      }
      
      public static function §9#M§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         § #N§ = param1;
         §^"=§ = param2;
         §##-§ = param3;
      }
      
      public static function §#!4§(param1:String) : void
      {
         §,#1§ = param1;
      }
   }
}
