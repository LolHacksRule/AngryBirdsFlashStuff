package §6o§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §+!k§
   {
      
      public static const §7S§:Boolean = true;
      
      public static const §6!C§:Boolean = true;
      
      public static const §?U§:int = 0;
      
      public static const §<l§:int = 1;
      
      public static const §1!X§:int = 500;
      
      private static var §&!R§:Array = null;
      
      private static var §@!+§:Number = 0;
      
      public static var §4e§:int = Keyboard.F1;
      
      public static var §set §:int = Keyboard.F3;
      
      public static var §'y§:int = Keyboard.F2;
      
      public static var §5!0§:int = Keyboard.F4;
      
      public static var §=8§:Boolean = false;
      
      public static var §1"F§:Sprite = null;
      
      private static var §'!a§:TextField = null;
      
      private static var §6!%§:TextField = null;
      
      private static var §>!_§:TextField = null;
      
      private static var §]!Y§:TextField = null;
      
      public static var §>O§:int = -1;
      
      public static var § n§:String = "version: Unknown";
      
      public static var §9>§:String = "";
      
      {
         init();
      }
      
      public function §+!k§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§7S§)
         {
            return;
         }
         §&!R§ = new Array(§1!X§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§7S§)
         {
            _loc3_ = §@!+§++ % §1!X§;
            §&!R§[_loc3_] = [param1,param2];
            if(param2 == §>O§ || §>O§ < 0)
            {
               § !`§();
            }
         }
         if(§6!C§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §;!I§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function § !`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§7S§)
         {
            return;
         }
         if(§1"F§ && §1"F§.visible)
         {
            if(§>O§ < 0)
            {
               §>!_§.text = "Current channel: ALL";
            }
            else
            {
               §>!_§.text = "Current channel: " + §>O§;
            }
            if(§ n§ != null)
            {
               §]!Y§.text = § n§;
            }
            _loc1_ = true;
            if(§'!a§.scrollV != §'!a§.numLines - int(§'!a§.height / (§'!a§.textHeight / §'!a§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §1!X§)
            {
               _loc4_ = (§@!+§ + _loc3_ + 1) % 500;
               if(§&!R§[_loc4_] != null)
               {
                  if(§>O§ < 0 || §&!R§[_loc4_][1] == §>O§)
                  {
                     _loc2_ += §&!R§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §'!a§.text = _loc2_;
            if(_loc1_)
            {
               §'!a§.scrollV = §'!a§.numLines;
            }
         }
      }
      
      public static function §5?§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§7S§)
         {
            return;
         }
         §1"F§ = new Sprite();
         §1"F§.visible = false;
         param1.addChild(§1"F§);
         var _loc7_:Graphics;
         (_loc7_ = §1"F§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §'!a§ = new TextField();
         §'!a§.width = param4;
         §'!a§.height = param5 - 40;
         §'!a§.x = param2;
         §'!a§.y = param3 + 40;
         §'!a§.wordWrap = true;
         §1"F§.addChild(§'!a§);
         §6!%§ = new TextField();
         §6!%§.x = param2 + param4 / 2;
         §6!%§.y = param3;
         §6!%§.width = param4 / 2;
         §6!%§.height = 20;
         §6!%§.text = "LOGGER CAPTURING INPUT, F4";
         §6!%§.border = true;
         §6!%§.borderColor = 16711680;
         §1"F§.addChild(§6!%§);
         §>!_§ = new TextField();
         §>!_§.width = param4;
         §>!_§.height = 20;
         §>!_§.x = param2;
         §>!_§.y = param3;
         §1"F§.addChild(§>!_§);
         §]!Y§ = new TextField();
         §]!Y§.width = param4;
         §]!Y§.height = 20;
         §]!Y§.x = param2;
         §]!Y§.y = param3 + 20;
         §1"F§.addChild(§]!Y§);
         §#!F§(§=8§);
         if(param6 >= 0)
         {
            param1.addChildAt(§1"F§,param6);
         }
         else
         {
            param1.addChild(§1"F§);
         }
      }
      
      public static function §#!F§(param1:Boolean) : void
      {
         if(!§7S§)
         {
            return;
         }
         §=8§ = param1;
         §1"F§.mouseChildren = §=8§;
         §1"F§.mouseEnabled = §=8§;
         §>!_§.mouseEnabled = §=8§;
         §]!Y§.mouseEnabled = §=8§;
         §'!a§.mouseEnabled = §=8§;
         §6!%§.visible = §=8§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§7S§)
         {
            return;
         }
      }
      
      public static function §[z§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §4e§ = param1;
         §'y§ = param2;
         §set § = param3;
      }
      
      public static function §0!2§(param1:String) : void
      {
         § n§ = param1;
      }
   }
}
