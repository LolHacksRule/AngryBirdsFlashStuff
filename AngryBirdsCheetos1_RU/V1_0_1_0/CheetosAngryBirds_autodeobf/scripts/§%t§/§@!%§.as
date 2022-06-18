package §%t§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §@!%§
   {
      
      public static const §,`§:Boolean = true;
      
      public static const §@2§:Boolean = true;
      
      public static const §7Z§:int = 0;
      
      public static const §9i§:int = 1;
      
      public static const §'!%§:int = 500;
      
      private static var §%X§:Array = null;
      
      private static var §5^§:Number = 0;
      
      public static var §2!@§:int = Keyboard.F1;
      
      public static var §-'§:int = Keyboard.F3;
      
      public static var §1`§:int = Keyboard.F2;
      
      public static var §]'§:int = Keyboard.F4;
      
      public static var §5?§:Boolean = false;
      
      public static var §4!!§:Sprite = null;
      
      private static var §;#§:TextField = null;
      
      private static var §7!?§:TextField = null;
      
      private static var §+c§:TextField = null;
      
      private static var §>o§:TextField = null;
      
      public static var §!P§:int = -1;
      
      public static var §9D§:String = "version: Unknown";
      
      public static var § set§:String = "";
      
      {
         init();
      }
      
      public function §@!%§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§,`§)
         {
            return;
         }
         §%X§ = new Array(§'!%§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§,`§)
         {
            _loc3_ = §5^§++ % §'!%§;
            §%X§[_loc3_] = [param1,param2];
            if(param2 == §!P§ || §!P§ < 0)
            {
               §'P§();
            }
         }
         if(§@2§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §7!N§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §'P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§,`§)
         {
            return;
         }
         if(§4!!§ && §4!!§.visible)
         {
            if(§!P§ < 0)
            {
               §+c§.text = "Current channel: ALL";
            }
            else
            {
               §+c§.text = "Current channel: " + §!P§;
            }
            if(§9D§ != null)
            {
               §>o§.text = §9D§;
            }
            _loc1_ = true;
            if(§;#§.scrollV != §;#§.numLines - int(§;#§.height / (§;#§.textHeight / §;#§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §'!%§)
            {
               _loc4_ = (§5^§ + _loc3_ + 1) % 500;
               if(§%X§[_loc4_] != null)
               {
                  if(§!P§ < 0 || §%X§[_loc4_][1] == §!P§)
                  {
                     _loc2_ += §%X§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §;#§.text = _loc2_;
            if(_loc1_)
            {
               §;#§.scrollV = §;#§.numLines;
            }
         }
      }
      
      public static function §`D§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§,`§)
         {
            return;
         }
         §4!!§ = new Sprite();
         §4!!§.visible = false;
         param1.addChild(§4!!§);
         var _loc7_:Graphics;
         (_loc7_ = §4!!§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §;#§ = new TextField();
         §;#§.width = param4;
         §;#§.height = param5 - 40;
         §;#§.x = param2;
         §;#§.y = param3 + 40;
         §;#§.wordWrap = true;
         §4!!§.addChild(§;#§);
         §7!?§ = new TextField();
         §7!?§.x = param2 + param4 / 2;
         §7!?§.y = param3;
         §7!?§.width = param4 / 2;
         §7!?§.height = 20;
         §7!?§.text = "LOGGER CAPTURING INPUT, F4";
         §7!?§.border = true;
         §7!?§.borderColor = 16711680;
         §4!!§.addChild(§7!?§);
         §+c§ = new TextField();
         §+c§.width = param4;
         §+c§.height = 20;
         §+c§.x = param2;
         §+c§.y = param3;
         §4!!§.addChild(§+c§);
         §>o§ = new TextField();
         §>o§.width = param4;
         §>o§.height = 20;
         §>o§.x = param2;
         §>o§.y = param3 + 20;
         §4!!§.addChild(§>o§);
         §0k§(§5?§);
         if(param6 >= 0)
         {
            param1.addChildAt(§4!!§,param6);
         }
         else
         {
            param1.addChild(§4!!§);
         }
      }
      
      public static function §0k§(param1:Boolean) : void
      {
         if(!§,`§)
         {
            return;
         }
         §5?§ = param1;
         §4!!§.mouseChildren = §5?§;
         §4!!§.mouseEnabled = §5?§;
         §+c§.mouseEnabled = §5?§;
         §>o§.mouseEnabled = §5?§;
         §;#§.mouseEnabled = §5?§;
         §7!?§.visible = §5?§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§,`§)
         {
            return;
         }
      }
      
      public static function §-!a§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §2!@§ = param1;
         §1`§ = param2;
         §-'§ = param3;
      }
      
      public static function §0!"§(param1:String) : void
      {
         §9D§ = param1;
      }
   }
}
