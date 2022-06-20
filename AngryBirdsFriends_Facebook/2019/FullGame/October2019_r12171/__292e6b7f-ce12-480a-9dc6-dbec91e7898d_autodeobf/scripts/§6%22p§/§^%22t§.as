package §6"p§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §^"t§
   {
      
      public static const §`!]§:Boolean = true;
      
      public static const §3$§:Boolean = true;
      
      public static const §2#C§:int = 0;
      
      public static const §]L§:int = 1;
      
      public static const §9!K§:int = 500;
      
      private static var §=!z§:Array = null;
      
      private static var §-$$§:Number = 0;
      
      public static var §4# §:int = Keyboard.F1;
      
      public static var §"#<§:int = Keyboard.F3;
      
      public static var §&"J§:int = Keyboard.F2;
      
      public static var §6$0§:int = Keyboard.F4;
      
      public static var §0#c§:Boolean = false;
      
      public static var §5$2§:Sprite = null;
      
      private static var §2#e§:TextField = null;
      
      private static var §2C§:TextField = null;
      
      private static var §9!#§:TextField = null;
      
      private static var §!O§:TextField = null;
      
      public static var §4!%§:int = -1;
      
      public static var §`!C§:String = "version: Unknown";
      
      public static var §7!Q§:String = "";
      
      {
         init();
      }
      
      public function §^"t§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§`!]§)
         {
            return;
         }
         §=!z§ = new Array(§9!K§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§`!]§)
         {
            _loc3_ = §-$$§++ % §9!K§;
            §=!z§[_loc3_] = [param1,param2];
            if(param2 == §4!%§ || §4!%§ < 0)
            {
               §?#W§();
            }
         }
         if(§3$§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §8#V§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §?#W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§`!]§)
         {
            return;
         }
         if(§5$2§ && §5$2§.visible)
         {
            if(§4!%§ < 0)
            {
               §9!#§.text = "Current channel: ALL";
            }
            else
            {
               §9!#§.text = "Current channel: " + §4!%§;
            }
            if(§`!C§ != null)
            {
               §!O§.text = §`!C§;
            }
            _loc1_ = true;
            if(§2#e§.scrollV != §2#e§.numLines - int(§2#e§.height / (§2#e§.textHeight / §2#e§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §9!K§)
            {
               _loc4_ = (§-$$§ + _loc3_ + 1) % 500;
               if(§=!z§[_loc4_] != null)
               {
                  if(§4!%§ < 0 || §=!z§[_loc4_][1] == §4!%§)
                  {
                     _loc2_ += §=!z§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §2#e§.text = _loc2_;
            if(_loc1_)
            {
               §2#e§.scrollV = §2#e§.numLines;
            }
         }
      }
      
      public static function §&"4§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§`!]§)
         {
            return;
         }
         §5$2§ = new Sprite();
         §5$2§.visible = false;
         param1.addChild(§5$2§);
         var _loc7_:Graphics;
         (_loc7_ = §5$2§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §2#e§ = new TextField();
         §2#e§.width = param4;
         §2#e§.height = param5 - 40;
         §2#e§.x = param2;
         §2#e§.y = param3 + 40;
         §2#e§.wordWrap = true;
         §5$2§.addChild(§2#e§);
         §2C§ = new TextField();
         §2C§.x = param2 + param4 / 2;
         §2C§.y = param3;
         §2C§.width = param4 / 2;
         §2C§.height = 20;
         §2C§.text = "LOGGER CAPTURING INPUT, F4";
         §2C§.border = true;
         §2C§.borderColor = 16711680;
         §5$2§.addChild(§2C§);
         §9!#§ = new TextField();
         §9!#§.width = param4;
         §9!#§.height = 20;
         §9!#§.x = param2;
         §9!#§.y = param3;
         §5$2§.addChild(§9!#§);
         §!O§ = new TextField();
         §!O§.width = param4;
         §!O§.height = 20;
         §!O§.x = param2;
         §!O§.y = param3 + 20;
         §5$2§.addChild(§!O§);
         §+"<§(§0#c§);
         if(param6 >= 0)
         {
            param1.addChildAt(§5$2§,param6);
         }
         else
         {
            param1.addChild(§5$2§);
         }
      }
      
      public static function §+"<§(param1:Boolean) : void
      {
         if(!§`!]§)
         {
            return;
         }
         §0#c§ = param1;
         §5$2§.mouseChildren = §0#c§;
         §5$2§.mouseEnabled = §0#c§;
         §9!#§.mouseEnabled = §0#c§;
         §!O§.mouseEnabled = §0#c§;
         §2#e§.mouseEnabled = §0#c§;
         §2C§.visible = §0#c§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§`!]§)
         {
            return;
         }
      }
      
      public static function §"S§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §4# § = param1;
         §&"J§ = param2;
         §"#<§ = param3;
      }
      
      public static function §"p§(param1:String) : void
      {
         §`!C§ = param1;
      }
   }
}
