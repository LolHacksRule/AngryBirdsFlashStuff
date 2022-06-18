package §^!&§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §;C§
   {
      
      public static const §-@§:Boolean = true;
      
      public static const §<!A§:Boolean = true;
      
      public static const §0[§:int = 0;
      
      public static const §1!_§:int = 1;
      
      public static const §@A§:int = 500;
      
      private static var §>!O§:Array = null;
      
      private static var §@!;§:Number = 0;
      
      public static var §>%§:int = Keyboard.F1;
      
      public static var §-N§:int = Keyboard.F3;
      
      public static var §>F§:int = Keyboard.F2;
      
      public static var §]!=§:int = Keyboard.F4;
      
      public static var §2e§:Boolean = false;
      
      public static var §9!%§:Sprite = null;
      
      private static var §+!G§:TextField = null;
      
      private static var §25§:TextField = null;
      
      private static var §^!-§:TextField = null;
      
      private static var §9v§:TextField = null;
      
      public static var §#!K§:int = -1;
      
      public static var §const§:String = "version: Unknown";
      
      public static var §#,§:String = "";
      
      {
         init();
      }
      
      public function §;C§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§-@§)
         {
            return;
         }
         §>!O§ = new Array(§@A§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§-@§)
         {
            _loc3_ = §@!;§++ % §@A§;
            §>!O§[_loc3_] = [param1,param2];
            if(param2 == §#!K§ || §#!K§ < 0)
            {
               §7W§();
            }
         }
         if(§<!A§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §+>§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §7W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§-@§)
         {
            return;
         }
         if(§9!%§ && §9!%§.visible)
         {
            if(§#!K§ < 0)
            {
               §^!-§.text = "Current channel: ALL";
            }
            else
            {
               §^!-§.text = "Current channel: " + §#!K§;
            }
            if(§const§ != null)
            {
               §9v§.text = §const§;
            }
            _loc1_ = true;
            if(§+!G§.scrollV != §+!G§.numLines - int(§+!G§.height / (§+!G§.textHeight / §+!G§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §@A§)
            {
               _loc4_ = (§@!;§ + _loc3_ + 1) % 500;
               if(§>!O§[_loc4_] != null)
               {
                  if(§#!K§ < 0 || §>!O§[_loc4_][1] == §#!K§)
                  {
                     _loc2_ += §>!O§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §+!G§.text = _loc2_;
            if(_loc1_)
            {
               §+!G§.scrollV = §+!G§.numLines;
            }
         }
      }
      
      public static function §?K§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§-@§)
         {
            return;
         }
         §9!%§ = new Sprite();
         §9!%§.visible = false;
         param1.addChild(§9!%§);
         var _loc7_:Graphics;
         (_loc7_ = §9!%§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §+!G§ = new TextField();
         §+!G§.width = param4;
         §+!G§.height = param5 - 40;
         §+!G§.x = param2;
         §+!G§.y = param3 + 40;
         §+!G§.wordWrap = true;
         §9!%§.addChild(§+!G§);
         §25§ = new TextField();
         §25§.x = param2 + param4 / 2;
         §25§.y = param3;
         §25§.width = param4 / 2;
         §25§.height = 20;
         §25§.text = "LOGGER CAPTURING INPUT, F4";
         §25§.border = true;
         §25§.borderColor = 16711680;
         §9!%§.addChild(§25§);
         §^!-§ = new TextField();
         §^!-§.width = param4;
         §^!-§.height = 20;
         §^!-§.x = param2;
         §^!-§.y = param3;
         §9!%§.addChild(§^!-§);
         §9v§ = new TextField();
         §9v§.width = param4;
         §9v§.height = 20;
         §9v§.x = param2;
         §9v§.y = param3 + 20;
         §9!%§.addChild(§9v§);
         §5T§(§2e§);
         if(param6 >= 0)
         {
            param1.addChildAt(§9!%§,param6);
         }
         else
         {
            param1.addChild(§9!%§);
         }
      }
      
      public static function §5T§(param1:Boolean) : void
      {
         if(!§-@§)
         {
            return;
         }
         §2e§ = param1;
         §9!%§.mouseChildren = §2e§;
         §9!%§.mouseEnabled = §2e§;
         §^!-§.mouseEnabled = §2e§;
         §9v§.mouseEnabled = §2e§;
         §+!G§.mouseEnabled = §2e§;
         §25§.visible = §2e§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§-@§)
         {
            return;
         }
      }
      
      public static function §>V§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §>%§ = param1;
         §>F§ = param2;
         §-N§ = param3;
      }
      
      public static function §6O§(param1:String) : void
      {
         §const§ = param1;
      }
   }
}
