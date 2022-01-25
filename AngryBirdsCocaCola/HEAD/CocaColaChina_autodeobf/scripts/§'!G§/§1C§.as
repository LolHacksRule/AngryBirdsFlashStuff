package §'!G§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §1C§
   {
      
      public static const §-g§:Boolean = true;
      
      public static const §=a§:Boolean = true;
      
      public static const §8n§:int = 0;
      
      public static const §`!L§:int = 1;
      
      public static const §#!4§:int = 500;
      
      private static var §`%§:Array = null;
      
      private static var §5!=§:Number = 0;
      
      public static var § each§:int = Keyboard.F1;
      
      public static var §2r§:int = Keyboard.F3;
      
      public static var §1j§:int = Keyboard.F2;
      
      public static var §2!P§:int = Keyboard.F4;
      
      public static var §'f§:Boolean = false;
      
      public static var §`!G§:Sprite = null;
      
      private static var §!Z§:TextField = null;
      
      private static var §<![§:TextField = null;
      
      private static var §^!-§:TextField = null;
      
      private static var §`o§:TextField = null;
      
      public static var §51§:int = -1;
      
      public static var §4!M§:String = "version: Unknown";
      
      public static var §-!W§:String = "";
      
      {
         init();
      }
      
      public function §1C§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§-g§)
         {
            return;
         }
         §`%§ = new Array(§#!4§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§-g§)
         {
            _loc3_ = §5!=§++ % §#!4§;
            §`%§[_loc3_] = [param1,param2];
            if(param2 == §51§ || §51§ < 0)
            {
               § !,§();
            }
         }
         if(§=a§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §!G§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function § !,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§-g§)
         {
            return;
         }
         if(§`!G§ && §`!G§.visible)
         {
            if(§51§ < 0)
            {
               §^!-§.text = "Current channel: ALL";
            }
            else
            {
               §^!-§.text = "Current channel: " + §51§;
            }
            if(§4!M§ != null)
            {
               §`o§.text = §4!M§;
            }
            _loc1_ = true;
            if(§!Z§.scrollV != §!Z§.numLines - int(§!Z§.height / (§!Z§.textHeight / §!Z§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §#!4§)
            {
               _loc4_ = (§5!=§ + _loc3_ + 1) % 500;
               if(§`%§[_loc4_] != null)
               {
                  if(§51§ < 0 || §`%§[_loc4_][1] == §51§)
                  {
                     _loc2_ += §`%§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §!Z§.text = _loc2_;
            if(_loc1_)
            {
               §!Z§.scrollV = §!Z§.numLines;
            }
         }
      }
      
      public static function §`r§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§-g§)
         {
            return;
         }
         §`!G§ = new Sprite();
         §`!G§.visible = false;
         param1.addChild(§`!G§);
         var _loc7_:Graphics;
         (_loc7_ = §`!G§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §!Z§ = new TextField();
         §!Z§.width = param4;
         §!Z§.height = param5 - 40;
         §!Z§.x = param2;
         §!Z§.y = param3 + 40;
         §!Z§.wordWrap = true;
         §`!G§.addChild(§!Z§);
         §<![§ = new TextField();
         §<![§.x = param2 + param4 / 2;
         §<![§.y = param3;
         §<![§.width = param4 / 2;
         §<![§.height = 20;
         §<![§.text = "LOGGER CAPTURING INPUT, F4";
         §<![§.border = true;
         §<![§.borderColor = 16711680;
         §`!G§.addChild(§<![§);
         §^!-§ = new TextField();
         §^!-§.width = param4;
         §^!-§.height = 20;
         §^!-§.x = param2;
         §^!-§.y = param3;
         §`!G§.addChild(§^!-§);
         §`o§ = new TextField();
         §`o§.width = param4;
         §`o§.height = 20;
         §`o§.x = param2;
         §`o§.y = param3 + 20;
         §`!G§.addChild(§`o§);
         §2!W§(§'f§);
         if(param6 >= 0)
         {
            param1.addChildAt(§`!G§,param6);
         }
         else
         {
            param1.addChild(§`!G§);
         }
      }
      
      public static function §2!W§(param1:Boolean) : void
      {
         if(!§-g§)
         {
            return;
         }
         §'f§ = param1;
         §`!G§.mouseChildren = §'f§;
         §`!G§.mouseEnabled = §'f§;
         §^!-§.mouseEnabled = §'f§;
         §`o§.mouseEnabled = §'f§;
         §!Z§.mouseEnabled = §'f§;
         §<![§.visible = §'f§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§-g§)
         {
            return;
         }
      }
      
      public static function §6X§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         § each§ = param1;
         §1j§ = param2;
         §2r§ = param3;
      }
      
      public static function §1F§(param1:String) : void
      {
         §4!M§ = param1;
      }
   }
}
