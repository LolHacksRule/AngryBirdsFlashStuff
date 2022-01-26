package §?@§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §"]§
   {
      
      public static const §1!V§:Boolean = true;
      
      public static const §9O§:Boolean = true;
      
      public static const §<!B§:int = 0;
      
      public static const §>U§:int = 1;
      
      public static const §1C§:int = 500;
      
      private static var §-g§:Array = null;
      
      private static var §=a§:Number = 0;
      
      public static var §8n§:int = Keyboard.F1;
      
      public static var §`!L§:int = Keyboard.F3;
      
      public static var §#!4§:int = Keyboard.F2;
      
      public static var §`%§:int = Keyboard.F4;
      
      public static var §5!=§:Boolean = false;
      
      public static var § each§:Sprite = null;
      
      private static var §2r§:TextField = null;
      
      private static var §1j§:TextField = null;
      
      private static var §2!P§:TextField = null;
      
      private static var §'f§:TextField = null;
      
      public static var §`!G§:int = -1;
      
      public static var §!Z§:String = "version: Unknown";
      
      public static var §<![§:String = "";
      
      {
         init();
      }
      
      public function §"]§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§1!V§)
         {
            return;
         }
         §-g§ = new Array(§1C§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§1!V§)
         {
            _loc3_ = §=a§++ % §1C§;
            §-g§[_loc3_] = [param1,param2];
            if(param2 == §`!G§ || §`!G§ < 0)
            {
               §`o§();
            }
         }
         if(§9O§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §^!-§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §`o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§1!V§)
         {
            return;
         }
         if(§ each§ && § each§.visible)
         {
            if(§`!G§ < 0)
            {
               §2!P§.text = "Current channel: ALL";
            }
            else
            {
               §2!P§.text = "Current channel: " + §`!G§;
            }
            if(§!Z§ != null)
            {
               §'f§.text = §!Z§;
            }
            _loc1_ = true;
            if(§2r§.scrollV != §2r§.numLines - int(§2r§.height / (§2r§.textHeight / §2r§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §1C§)
            {
               _loc4_ = (§=a§ + _loc3_ + 1) % 500;
               if(§-g§[_loc4_] != null)
               {
                  if(§`!G§ < 0 || §-g§[_loc4_][1] == §`!G§)
                  {
                     _loc2_ += §-g§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §2r§.text = _loc2_;
            if(_loc1_)
            {
               §2r§.scrollV = §2r§.numLines;
            }
         }
      }
      
      public static function §51§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§1!V§)
         {
            return;
         }
         § each§ = new Sprite();
         § each§.visible = false;
         param1.addChild(§ each§);
         var _loc7_:Graphics;
         (_loc7_ = § each§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §2r§ = new TextField();
         §2r§.width = param4;
         §2r§.height = param5 - 40;
         §2r§.x = param2;
         §2r§.y = param3 + 40;
         §2r§.wordWrap = true;
         § each§.addChild(§2r§);
         §1j§ = new TextField();
         §1j§.x = param2 + param4 / 2;
         §1j§.y = param3;
         §1j§.width = param4 / 2;
         §1j§.height = 20;
         §1j§.text = "LOGGER CAPTURING INPUT, F4";
         §1j§.border = true;
         §1j§.borderColor = 16711680;
         § each§.addChild(§1j§);
         §2!P§ = new TextField();
         §2!P§.width = param4;
         §2!P§.height = 20;
         §2!P§.x = param2;
         §2!P§.y = param3;
         § each§.addChild(§2!P§);
         §'f§ = new TextField();
         §'f§.width = param4;
         §'f§.height = 20;
         §'f§.x = param2;
         §'f§.y = param3 + 20;
         § each§.addChild(§'f§);
         §4!M§(§5!=§);
         if(param6 >= 0)
         {
            param1.addChildAt(§ each§,param6);
         }
         else
         {
            param1.addChild(§ each§);
         }
      }
      
      public static function §4!M§(param1:Boolean) : void
      {
         if(!§1!V§)
         {
            return;
         }
         §5!=§ = param1;
         § each§.mouseChildren = §5!=§;
         § each§.mouseEnabled = §5!=§;
         §2!P§.mouseEnabled = §5!=§;
         §'f§.mouseEnabled = §5!=§;
         §2r§.mouseEnabled = §5!=§;
         §1j§.visible = §5!=§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§1!V§)
         {
            return;
         }
      }
      
      public static function §-!W§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §8n§ = param1;
         §#!4§ = param2;
         §`!L§ = param3;
      }
      
      public static function §!G§(param1:String) : void
      {
         §!Z§ = param1;
      }
   }
}
