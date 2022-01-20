package §'+§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §1u§
   {
      
      public static const §>!Y§:Boolean = true;
      
      public static const §1O§:Boolean = true;
      
      public static const §-B§:int = 0;
      
      public static const §1Q§:int = 1;
      
      public static const §@!+§:int = 500;
      
      private static var §2@§:Array = null;
      
      private static var §]y§:Number = 0;
      
      public static var §0c§:int = Keyboard.F1;
      
      public static var §5!P§:int = Keyboard.F3;
      
      public static var §!!h§:int = Keyboard.F2;
      
      public static var §7!8§:int = Keyboard.F4;
      
      public static var §=!"§:Boolean = false;
      
      public static var §,!8§:Sprite = null;
      
      private static var §3J§:TextField = null;
      
      private static var §6J§:TextField = null;
      
      private static var §[j§:TextField = null;
      
      private static var §1U§:TextField = null;
      
      public static var §^4§:int = -1;
      
      public static var §3%§:String = "version: Unknown";
      
      public static var §,!#§:String = "";
      
      {
         init();
      }
      
      public function §1u§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§>!Y§)
         {
            return;
         }
         §2@§ = new Array(§@!+§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§>!Y§)
         {
            _loc3_ = §]y§++ % §@!+§;
            §2@§[_loc3_] = [param1,param2];
            if(param2 == §^4§ || §^4§ < 0)
            {
               §%w§();
            }
         }
         if(§1O§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §9F§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §%w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§>!Y§)
         {
            return;
         }
         if(§,!8§ && §,!8§.visible)
         {
            if(§^4§ < 0)
            {
               §[j§.text = "Current channel: ALL";
            }
            else
            {
               §[j§.text = "Current channel: " + §^4§;
            }
            if(§3%§ != null)
            {
               §1U§.text = §3%§;
            }
            _loc1_ = true;
            if(§3J§.scrollV != §3J§.numLines - int(§3J§.height / (§3J§.textHeight / §3J§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §@!+§)
            {
               _loc4_ = (§]y§ + _loc3_ + 1) % 500;
               if(§2@§[_loc4_] != null)
               {
                  if(§^4§ < 0 || §2@§[_loc4_][1] == §^4§)
                  {
                     _loc2_ += §2@§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §3J§.text = _loc2_;
            if(_loc1_)
            {
               §3J§.scrollV = §3J§.numLines;
            }
         }
      }
      
      public static function §=!E§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§>!Y§)
         {
            return;
         }
         §,!8§ = new Sprite();
         §,!8§.visible = false;
         param1.addChild(§,!8§);
         var _loc7_:Graphics;
         (_loc7_ = §,!8§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §3J§ = new TextField();
         §3J§.width = param4;
         §3J§.height = param5 - 40;
         §3J§.x = param2;
         §3J§.y = param3 + 40;
         §3J§.wordWrap = true;
         §,!8§.addChild(§3J§);
         §6J§ = new TextField();
         §6J§.x = param2 + param4 / 2;
         §6J§.y = param3;
         §6J§.width = param4 / 2;
         §6J§.height = 20;
         §6J§.text = "LOGGER CAPTURING INPUT, F4";
         §6J§.border = true;
         §6J§.borderColor = 16711680;
         §,!8§.addChild(§6J§);
         §[j§ = new TextField();
         §[j§.width = param4;
         §[j§.height = 20;
         §[j§.x = param2;
         §[j§.y = param3;
         §,!8§.addChild(§[j§);
         §1U§ = new TextField();
         §1U§.width = param4;
         §1U§.height = 20;
         §1U§.x = param2;
         §1U§.y = param3 + 20;
         §,!8§.addChild(§1U§);
         §6v§(§=!"§);
         if(param6 >= 0)
         {
            param1.addChildAt(§,!8§,param6);
         }
         else
         {
            param1.addChild(§,!8§);
         }
      }
      
      public static function §6v§(param1:Boolean) : void
      {
         if(!§>!Y§)
         {
            return;
         }
         §=!"§ = param1;
         §,!8§.mouseChildren = §=!"§;
         §,!8§.mouseEnabled = §=!"§;
         §[j§.mouseEnabled = §=!"§;
         §1U§.mouseEnabled = §=!"§;
         §3J§.mouseEnabled = §=!"§;
         §6J§.visible = §=!"§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§>!Y§)
         {
            return;
         }
      }
      
      public static function §#m§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §0c§ = param1;
         §!!h§ = param2;
         §5!P§ = param3;
      }
      
      public static function §27§(param1:String) : void
      {
         §3%§ = param1;
      }
   }
}
