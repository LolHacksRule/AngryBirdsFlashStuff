package §3v§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §1a§
   {
      
      public static const §,!C§:Boolean = true;
      
      public static const §6?§:Boolean = true;
      
      public static const §"M§:int = 0;
      
      public static const §5#§:int = 1;
      
      public static const §3S§:int = 500;
      
      private static var §with§:Array = null;
      
      private static var §>S§:Number = 0;
      
      public static var §^b§:int = Keyboard.F1;
      
      public static var §9!§:int = Keyboard.F3;
      
      public static var §@y§:int = Keyboard.F2;
      
      public static var §63§:int = Keyboard.F4;
      
      public static var § O§:Boolean = false;
      
      public static var §;H§:Sprite = null;
      
      private static var §;!@§:TextField = null;
      
      private static var §!!<§:TextField = null;
      
      private static var §3!D§:TextField = null;
      
      private static var §%l§:TextField = null;
      
      public static var §4!"§:int = -1;
      
      public static var §]j§:String = "version: Unknown";
      
      public static var §;L§:String = "";
      
      {
         init();
      }
      
      public function §1a§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§,!C§)
         {
            return;
         }
         §with§ = new Array(§3S§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§,!C§)
         {
            _loc3_ = §>S§++ % §3S§;
            §with§[_loc3_] = [param1,param2];
            if(param2 == §4!"§ || §4!"§ < 0)
            {
               §9!5§();
            }
         }
         if(§6?§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §4!%§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §9!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§,!C§)
         {
            return;
         }
         if(§;H§ && §;H§.visible)
         {
            if(§4!"§ < 0)
            {
               §3!D§.text = "Current channel: ALL";
            }
            else
            {
               §3!D§.text = "Current channel: " + §4!"§;
            }
            if(§]j§ != null)
            {
               §%l§.text = §]j§;
            }
            _loc1_ = true;
            if(§;!@§.scrollV != §;!@§.numLines - int(§;!@§.height / (§;!@§.textHeight / §;!@§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §3S§)
            {
               _loc4_ = (§>S§ + _loc3_ + 1) % 500;
               if(§with§[_loc4_] != null)
               {
                  if(§4!"§ < 0 || §with§[_loc4_][1] == §4!"§)
                  {
                     _loc2_ += §with§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §;!@§.text = _loc2_;
            if(_loc1_)
            {
               §;!@§.scrollV = §;!@§.numLines;
            }
         }
      }
      
      public static function §'C§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§,!C§)
         {
            return;
         }
         §;H§ = new Sprite();
         §;H§.visible = false;
         param1.addChild(§;H§);
         var _loc7_:Graphics;
         (_loc7_ = §;H§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §;!@§ = new TextField();
         §;!@§.width = param4;
         §;!@§.height = param5 - 40;
         §;!@§.x = param2;
         §;!@§.y = param3 + 40;
         §;!@§.wordWrap = true;
         §;H§.addChild(§;!@§);
         §!!<§ = new TextField();
         §!!<§.x = param2 + param4 / 2;
         §!!<§.y = param3;
         §!!<§.width = param4 / 2;
         §!!<§.height = 20;
         §!!<§.text = "LOGGER CAPTURING INPUT, F4";
         §!!<§.border = true;
         §!!<§.borderColor = 16711680;
         §;H§.addChild(§!!<§);
         §3!D§ = new TextField();
         §3!D§.width = param4;
         §3!D§.height = 20;
         §3!D§.x = param2;
         §3!D§.y = param3;
         §;H§.addChild(§3!D§);
         §%l§ = new TextField();
         §%l§.width = param4;
         §%l§.height = 20;
         §%l§.x = param2;
         §%l§.y = param3 + 20;
         §;H§.addChild(§%l§);
         §6J§(§ O§);
         if(param6 >= 0)
         {
            param1.addChildAt(§;H§,param6);
         }
         else
         {
            param1.addChild(§;H§);
         }
      }
      
      public static function §6J§(param1:Boolean) : void
      {
         if(!§,!C§)
         {
            return;
         }
         § O§ = param1;
         §;H§.mouseChildren = § O§;
         §;H§.mouseEnabled = § O§;
         §3!D§.mouseEnabled = § O§;
         §%l§.mouseEnabled = § O§;
         §;!@§.mouseEnabled = § O§;
         §!!<§.visible = § O§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§,!C§)
         {
            return;
         }
      }
      
      public static function §&p§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §^b§ = param1;
         §@y§ = param2;
         §9!§ = param3;
      }
      
      public static function §3+§(param1:String) : void
      {
         §]j§ = param1;
      }
   }
}
