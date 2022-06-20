package §#"3§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §4!h§
   {
      
      public static const §6"I§:Boolean = true;
      
      public static const §-$1§:Boolean = true;
      
      public static const §]5§:int = 0;
      
      public static const §`!M§:int = 1;
      
      public static const §6"X§:int = 500;
      
      private static var §<"K§:Array = null;
      
      private static var §!"'§:Number = 0;
      
      public static var §=!+§:int = Keyboard.F1;
      
      public static var §<J§:int = Keyboard.F3;
      
      public static var § "H§:int = Keyboard.F2;
      
      public static var §,,§:int = Keyboard.F4;
      
      public static var §-#g§:Boolean = false;
      
      public static var §+"!§:Sprite = null;
      
      private static var §0"W§:TextField = null;
      
      private static var §&"k§:TextField = null;
      
      private static var §&"K§:TextField = null;
      
      private static var §,9§:TextField = null;
      
      public static var §[#,§:int = -1;
      
      public static var §<"6§:String = "version: Unknown";
      
      public static var §^#d§:String = "";
      
      {
         init();
      }
      
      public function §4!h§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§6"I§)
         {
            return;
         }
         §<"K§ = new Array(§6"X§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§6"I§)
         {
            _loc3_ = §!"'§++ % §6"X§;
            §<"K§[_loc3_] = [param1,param2];
            if(param2 == §[#,§ || §[#,§ < 0)
            {
               §8a§();
            }
         }
         if(§-$1§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §;"Z§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §8a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§6"I§)
         {
            return;
         }
         if(§+"!§ && §+"!§.visible)
         {
            if(§[#,§ < 0)
            {
               §&"K§.text = "Current channel: ALL";
            }
            else
            {
               §&"K§.text = "Current channel: " + §[#,§;
            }
            if(§<"6§ != null)
            {
               §,9§.text = §<"6§;
            }
            _loc1_ = true;
            if(§0"W§.scrollV != §0"W§.numLines - int(§0"W§.height / (§0"W§.textHeight / §0"W§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §6"X§)
            {
               _loc4_ = (§!"'§ + _loc3_ + 1) % 500;
               if(§<"K§[_loc4_] != null)
               {
                  if(§[#,§ < 0 || §<"K§[_loc4_][1] == §[#,§)
                  {
                     _loc2_ += §<"K§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §0"W§.text = _loc2_;
            if(_loc1_)
            {
               §0"W§.scrollV = §0"W§.numLines;
            }
         }
      }
      
      public static function §8!&§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§6"I§)
         {
            return;
         }
         §+"!§ = new Sprite();
         §+"!§.visible = false;
         param1.addChild(§+"!§);
         var _loc7_:Graphics;
         (_loc7_ = §+"!§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §0"W§ = new TextField();
         §0"W§.width = param4;
         §0"W§.height = param5 - 40;
         §0"W§.x = param2;
         §0"W§.y = param3 + 40;
         §0"W§.wordWrap = true;
         §+"!§.addChild(§0"W§);
         §&"k§ = new TextField();
         §&"k§.x = param2 + param4 / 2;
         §&"k§.y = param3;
         §&"k§.width = param4 / 2;
         §&"k§.height = 20;
         §&"k§.text = "LOGGER CAPTURING INPUT, F4";
         §&"k§.border = true;
         §&"k§.borderColor = 16711680;
         §+"!§.addChild(§&"k§);
         §&"K§ = new TextField();
         §&"K§.width = param4;
         §&"K§.height = 20;
         §&"K§.x = param2;
         §&"K§.y = param3;
         §+"!§.addChild(§&"K§);
         §,9§ = new TextField();
         §,9§.width = param4;
         §,9§.height = 20;
         §,9§.x = param2;
         §,9§.y = param3 + 20;
         §+"!§.addChild(§,9§);
         §"!a§(§-#g§);
         if(param6 >= 0)
         {
            param1.addChildAt(§+"!§,param6);
         }
         else
         {
            param1.addChild(§+"!§);
         }
      }
      
      public static function §"!a§(param1:Boolean) : void
      {
         if(!§6"I§)
         {
            return;
         }
         §-#g§ = param1;
         §+"!§.mouseChildren = §-#g§;
         §+"!§.mouseEnabled = §-#g§;
         §&"K§.mouseEnabled = §-#g§;
         §,9§.mouseEnabled = §-#g§;
         §0"W§.mouseEnabled = §-#g§;
         §&"k§.visible = §-#g§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§6"I§)
         {
            return;
         }
      }
      
      public static function §9!t§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §=!+§ = param1;
         § "H§ = param2;
         §<J§ = param3;
      }
      
      public static function §!y§(param1:String) : void
      {
         §<"6§ = param1;
      }
   }
}
